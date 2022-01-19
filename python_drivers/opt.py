import dace
from dace import SDFG
from dace.transformation.auto.auto_optimize import auto_optimize


def opt(sdfg: dace.SDFG):
    sdfg = auto_optimize(sdfg, dace.DeviceType.CPU)
    sdfg.simplify()
    from dace.sdfg.analysis import scalar_to_symbol as s2s
    for sd in sdfg.sdfg_list:
        promoted = s2s.promote_scalars_to_symbols(sd)
    sdfg.simplify()

    from dace.transformation.dataflow.tasklet_fusion import SimpleTaskletFusion
    from dace.transformation import helpers as xfh

    sdfg.apply_transformations_repeated(SimpleTaskletFusion)

    xfh.split_interstate_edges(sdfg)

    from dace.transformation.interstate.state_elimination import ConstantPropagation, StateAssignElimination, EndStateElimination
    from dace.transformation.interstate import LoopToMap

    from dace.transformation import simplification_transformations
    sdfg.apply_transformations_repeated(
        set([StateAssignElimination, EndStateElimination, ConstantPropagation]
            + simplification_transformations()))
    for sd in sdfg.sdfg_list:
        promoted = s2s.promote_scalars_to_symbols(sd)
    sdfg.apply_transformations_repeated(
        set([StateAssignElimination, EndStateElimination] +
            simplification_transformations()))
    xfh.split_interstate_edges(sdfg)

    sdfg.apply_transformations_repeated(LoopToMap)
    sdfg.apply_transformations_repeated(
        set([StateAssignElimination, EndStateElimination]))
    from dace.sdfg import utils as sdutil

    sdutil.inline_sdfgs(sdfg, multistate=True)
    sdutil.fuse_states(sdfg)
    # + simplification_transformations()))
