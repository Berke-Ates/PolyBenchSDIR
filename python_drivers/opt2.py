import ast
from typing import Dict, Set
import dace
from dace import SDFG
from dace.transformation.auto.auto_optimize import auto_optimize
from typing import Optional

class Renamer(ast.NodeTransformer):
    def __init__(self, repldict: Dict[str, str]):
        self.repldict = repldict

    def visit_Name(self, node):
        if node.id in self.repldict:
            node.id = self.repldict[node.id]
        return self.generic_visit(node)


class VarsGrabber(ast.NodeTransformer):
    # TODO could be improved to only grab free vars
    def __init__(self):
        self.vars = set()

    def visit_Name(self, node):
        self.vars.add(node.id)
        return self.generic_visit(node)


class Inliner(ast.NodeTransformer):
    def __init__(self, target_id, target_ast):
        self.target_id = target_id
        self.target_ast = target_ast

    def visit_Name(self, node):
        if node.id == self.target_id:
            return ast.copy_location(self.target_ast, node)
        else:
            return self.generic_visit(node)

from dace.transformation.transformation import SingleStateTransformation, PatternNode
import dace.sdfg.nodes as nd
from dace.sdfg.utils import node_path_graph
from dace import SDFG, SDFGState, dtypes
import astunparse

def find_str_not_in_set(existing: Set[str], target_str: Optional[str]) -> str:
    """ Try to find a new str that is not in the set.

        :param existing: the existing strs.
        :param target_str: (optional) a target_str that should be used as a base for the new str.
        :return: a new str that is not in `existing`.
    """
    base_name = target_str or "temp"

    if base_name not in existing:
        return base_name

    i = 0
    while (base_name + "_" + str(i)) in existing:
        i += 1
    return base_name + "_" + str(i)


class TaskletFusion(SingleStateTransformation):
    """ Fuse a constant pad into a convolution.
    """

    tsk1 = PatternNode(nd.Tasklet)
    data = PatternNode(nd.AccessNode)
    tsk2 = PatternNode(nd.Tasklet)

    @classmethod
    def expressions(cls):
        return [
            node_path_graph(cls.tsk1, cls.data, cls.tsk2),
            node_path_graph(cls.tsk1, cls.tsk2)
        ]

    def can_be_applied(self, graph: SDFGState,
                       expr_index: int, sdfg: SDFG, permissive: bool) -> bool:
        tsk1: nd.Tasklet = self.tsk1
        data: nd.AccessNode = self.data if self.expr_index == 0 else None
        tsk2: nd.Tasklet = self.tsk2

        if tsk1.language is not dtypes.Language.Python or tsk2.language is not dtypes.Language.Python:
            return False

        if data is not None and data.desc(sdfg).total_size != 1:
            return False

        # tsk1 is not used anywhere else
        if graph.out_degree(tsk1) != 1 or (data is not None
                                           and len(set(graph.successors(data))) != 1):
            return False

        # try to parse the tasklet
        try:
            if len(tsk1.code.code) != 1:
                return False
            if len(tsk1.code.code[0].targets) != 1:
                return False
        except:
            return False
        return True

    def apply(self, state: SDFGState, sdfg: SDFG) -> nd.Tasklet:
        tsk1: nd.Tasklet = self.tsk1
        data: nd.AccessNode = self.data if self.expr_index == 0 else None
        tsk2: nd.Tasklet = self.tsk2

        tsk2_in_edges = state.out_edges(data if data is not None else tsk1)

        # remove the connector from tsk2
        dst_conns = {e.dst_conn for e in tsk2_in_edges}
        inputs = {
            k: v
            for k, v in tsk2.in_connectors.items()
            if k not in dst_conns
        }

        # copy tsk1's in connectors
        repldict = {}
        for in_edge in state.in_edges(tsk1):
            old_value = in_edge.dst_conn
            # check if there's a conflict
            if in_edge.dst_conn in inputs:
                # conflicts are ok if the memlets are the same
                tsk2edge = list(
                    state.in_edges_by_connector(tsk2, in_edge.dst_conn))[0]
                if (in_edge.data != tsk2edge.data
                        or in_edge.data.data != tsk2edge.data.data):
                    in_edge.dst_conn = find_str_not_in_set(
                        set(inputs), in_edge.dst_conn)
                    repldict[old_value] = in_edge.dst_conn
                else:
                    # if the memlets are the same rename rename the connector
                    # on the first tasklet so that we only have one read
                    pass

            inputs[in_edge.dst_conn] = tsk1.in_connectors[old_value]

        assigned_value = tsk1.code.code[0].value
        if repldict:
            assigned_value = Renamer(repldict).visit(assigned_value)

        new_code = []
        for line in tsk2.code.code:
            for tsk2_in_edge in tsk2_in_edges:
                line = Inliner(tsk2_in_edge.dst_conn, assigned_value).visit(line)
            new_code.append(line)
        new_code_str = "\n".join(astunparse.unparse(line) for line in new_code)

        new_tasklet = state.add_tasklet(tsk1.label + "_fused_" + tsk2.label,
                                        inputs, tsk2.out_connectors,
                                        new_code_str)

        for in_edge in state.in_edges(tsk1):
            state.add_edge(in_edge.src, in_edge.src_conn, new_tasklet,
                           in_edge.dst_conn, in_edge.data)

        for in_edge in state.in_edges(tsk2):
            # only connect if there is no edge connected to that connector yet
            if len(
                    list(
                        state.in_edges_by_connector(new_tasklet,
                                                    in_edge.dst_conn))) == 0:
                state.add_edge(in_edge.src, in_edge.src_conn, new_tasklet,
                               in_edge.dst_conn, in_edge.data)
            else:
                state.remove_memlet_path(in_edge)

        for out_edge in state.out_edges(tsk2):
            state.add_edge(new_tasklet, out_edge.src_conn, out_edge.dst,
                           out_edge.dst_conn, out_edge.data)

        state.remove_node(tsk1)
        if data is not None:
            state.remove_node(data)
        state.remove_node(tsk2)

def simple_cprop(sdfg: SDFG):
    from dace import symbolic
    while True:
        var_to_edge: Dict[str, graph.Edge[InterstateEdge]] = {}
        skip = set()
        for ise in sdfg.edges():
            for aname in ise.data.assignments.keys():
                # Appears more than once? Skip
                if aname in var_to_edge:
                    skip.add(aname)
                else:
                    var_to_edge[aname] = ise
        # Replace as necessary
        repldict = {}
        for var, ise in var_to_edge.items():
            if var in skip:
                continue
            # If depends on non-global values, skip
            fsyms = symbolic.free_symbols_and_functions(ise.data.assignments[var])
            if len(fsyms - sdfg.symbols.keys()) > 0:
                continue
            repldict[var] = ise.data.assignments[var]
            del ise.data.assignments[var]
            break
        # Propagate
        for k, v in repldict.items():
            for s in sdfg.nodes():
                s.replace(k, v)
            for e in sdfg.edges():
                e.data.replace(k, v, replace_keys=False)
        if len(repldict) == 0:
            # No more replacements done
            break
    s2s.remove_symbol_indirection(sdfg)
    
def opt2(sdfg):
  sdfg.simplify()

  from dace.sdfg.analysis import scalar_to_symbol as s2s
  s = time.time()
  for sd in sdfg.sdfg_list:
      promoted = s2s.promote_scalars_to_symbols(sd, transients_only=False)
      print('promoted:', promoted)
  print('Promotion time:', (time.time() - s), 's')

  sdfg.simplify()

  from dace.transformation.dataflow.tasklet_fusion import SimpleTaskletFusion
  from dace.transformation import helpers as xfh

  sdfg.apply_transformations_repeated(TaskletFusion)

  xfh.split_interstate_edges(sdfg)

  from dace.transformation.interstate.state_elimination import ConstantPropagation
  from dace.transformation.interstate import LoopToMap

  sdfg.apply_transformations_repeated(ConstantPropagation)

  s = time.time()
  for sd in sdfg.sdfg_list:
      promoted = s2s.promote_scalars_to_symbols(sd, transients_only=False)
      print('promoted:', promoted)
  print('Promotion time:', (time.time() - s), 's')

  simple_cprop(sdfg)

  sdfg.simplify()

  sdfg.apply_transformations_repeated(ConstantPropagation)

  xfh.split_interstate_edges(sdfg)

  sdfg.apply_transformations_repeated(LoopToMap)
  sdfg.simplify()
