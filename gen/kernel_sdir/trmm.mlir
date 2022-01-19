module  {
  sdir.sdfg {entry = @init_2} @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: !sdir.memlet<sym("s_0")x1000xf64>, %arg4: !sdir.memlet<sym("s_1")x1200xf64>) {
    %0 = sdir.alloc_transient {name = "_tmp_65"}() : !sdir.array<f64>
    %1 = sdir.alloc_transient {name = "_tmp_62"}() : !sdir.array<f64>
    %2 = sdir.alloc_transient {name = "_tmp_58"}() : !sdir.array<f64>
    %3 = sdir.alloc_transient {name = "_tmp_55"}() : !sdir.array<f64>
    %4 = sdir.alloc_transient {name = "_tmp_53"}() : !sdir.array<f64>
    %5 = sdir.alloc_transient {name = "_tmp_50"}() : !sdir.array<f64>
    %6 = sdir.alloc_transient {name = "_tmp_48"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_42")
    %7 = sdir.alloc_transient {name = "_tmp_40"}() : !sdir.array<index>
    %8 = sdir.alloc_transient {name = "_tmp_37"}() : !sdir.array<index>
    %9 = sdir.alloc_transient {name = "_tmp_34"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_27")
    %10 = sdir.alloc_transient {name = "_tmp_25"}() : !sdir.array<index>
    %11 = sdir.alloc_transient {name = "_tmp_22"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_15")
    %12 = sdir.alloc_transient {name = "_tmp_13"}() : !sdir.array<index>
    %13 = sdir.alloc_transient {name = "_tmp_10"}() : !sdir.array<index>
    %14 = sdir.alloc_transient {name = "_tmp_7"}() : !sdir.array<index>
    %15 = sdir.alloc_transient {name = "_tmp_4"}() : !sdir.array<index>
    sdir.state @init_2 {
    }
    sdir.state @state_3 {
      sdir.tasklet @task_5(%arg5: i32) -> index {
        %19 = arith.index_cast %arg5 : i32 to index
        sdir.return %19 : index
      }
      %16 = sdir.call @task_5(%arg1) : (i32) -> index
      %17 = sdir.get_access %15 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %16, %17[] : index -> !sdir.memlet<index>
      %18 = sdir.load %17[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_6 {
      sdir.tasklet @task_8(%arg5: i32) -> index {
        %19 = arith.index_cast %arg5 : i32 to index
        sdir.return %19 : index
      }
      %16 = sdir.call @task_8(%arg0) : (i32) -> index
      %17 = sdir.get_access %14 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %16, %17[] : index -> !sdir.memlet<index>
      %18 = sdir.load %17[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_9 {
      sdir.tasklet @task_11() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %16 = sdir.call @task_11() : () -> index
      %17 = sdir.get_access %13 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %16, %17[] : index -> !sdir.memlet<index>
      %18 = sdir.load %17[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_12 {
      sdir.tasklet @task_14() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %16 = sdir.call @task_14() : () -> index
      %17 = sdir.get_access %12 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %16, %17[] : index -> !sdir.memlet<index>
      %18 = sdir.load %17[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_16 {
      %16 = sdir.sym("loopIdx_15") : index
    }
    sdir.state @guard_17 {
    }
    sdir.state @body_18 {
    }
    sdir.state @state_21 {
      sdir.tasklet @task_23() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %16 = sdir.call @task_23() : () -> index
      %17 = sdir.get_access %11 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %16, %17[] : index -> !sdir.memlet<index>
      %18 = sdir.load %17[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_24 {
      sdir.tasklet @task_26() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %16 = sdir.call @task_26() : () -> index
      %17 = sdir.get_access %10 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %16, %17[] : index -> !sdir.memlet<index>
      %18 = sdir.load %17[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_28 {
      %16 = sdir.sym("loopIdx_27") : index
    }
    sdir.state @guard_29 {
    }
    sdir.state @body_30 {
    }
    sdir.state @state_33 {
      sdir.tasklet @task_35() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %16 = sdir.call @task_35() : () -> index
      %17 = sdir.get_access %9 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %16, %17[] : index -> !sdir.memlet<index>
      %18 = sdir.load %17[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_36 {
      sdir.tasklet @task_38(%arg5: index, %arg6: index) -> index {
        %22 = arith.addi %arg5, %arg6 : index
        sdir.return %22 : index
      }
      %16 = sdir.sym("loopIdx_15") : index
      %17 = sdir.get_access %9 : !sdir.array<index> -> !sdir.memlet<index>
      %18 = sdir.load %17[] : !sdir.memlet<index> -> index
      %19 = sdir.call @task_38(%16, %18) : (index, index) -> index
      %20 = sdir.get_access %8 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %19, %20[] : index -> !sdir.memlet<index>
      %21 = sdir.load %20[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_39 {
      sdir.tasklet @task_41() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %16 = sdir.call @task_41() : () -> index
      %17 = sdir.get_access %7 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %16, %17[] : index -> !sdir.memlet<index>
      %18 = sdir.load %17[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_43 {
      %16 = sdir.sym("loopIdx_42") : index
    }
    sdir.state @guard_44 {
    }
    sdir.state @body_45 {
    }
    sdir.state @state_49 {
      %16 = sdir.sym("loopIdx_42") : index
      %17 = sdir.sym("loopIdx_15") : index
      %18 = sdir.load %arg3[%16, %17] : !sdir.memlet<sym("s_0")x1000xf64> -> f64
      %19 = sdir.get_access %6 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %18, %19[] : f64 -> !sdir.memlet<f64>
      %20 = sdir.load %19[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_51 {
      %16 = sdir.sym("loopIdx_42") : index
      %17 = sdir.sym("loopIdx_27") : index
      %18 = sdir.load %arg4[%16, %17] : !sdir.memlet<sym("s_1")x1200xf64> -> f64
      %19 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %18, %19[] : f64 -> !sdir.memlet<f64>
      %20 = sdir.load %19[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_52 {
      sdir.tasklet @task_54(%arg5: f64, %arg6: f64) -> f64 {
        %23 = arith.mulf %arg5, %arg6 : f64
        sdir.return %23 : f64
      }
      %16 = sdir.get_access %6 : !sdir.array<f64> -> !sdir.memlet<f64>
      %17 = sdir.load %16[] : !sdir.memlet<f64> -> f64
      %18 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      %19 = sdir.load %18[] : !sdir.memlet<f64> -> f64
      %20 = sdir.call @task_54(%17, %19) : (f64, f64) -> f64
      %21 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %20, %21[] : f64 -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_56 {
      %16 = sdir.sym("loopIdx_15") : index
      %17 = sdir.sym("loopIdx_27") : index
      %18 = sdir.load %arg4[%16, %17] : !sdir.memlet<sym("s_1")x1200xf64> -> f64
      %19 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %18, %19[] : f64 -> !sdir.memlet<f64>
      %20 = sdir.load %19[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_57 {
      sdir.tasklet @task_59(%arg5: f64, %arg6: f64) -> f64 {
        %23 = arith.addf %arg5, %arg6 : f64
        sdir.return %23 : f64
      }
      %16 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      %17 = sdir.load %16[] : !sdir.memlet<f64> -> f64
      %18 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      %19 = sdir.load %18[] : !sdir.memlet<f64> -> f64
      %20 = sdir.call @task_59(%17, %19) : (f64, f64) -> f64
      %21 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %20, %21[] : f64 -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_60 {
      %16 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      %17 = sdir.load %16[] : !sdir.memlet<f64> -> f64
      %18 = sdir.sym("loopIdx_15") : index
      %19 = sdir.sym("loopIdx_27") : index
      sdir.store %17, %arg4[%18, %19] : f64 -> !sdir.memlet<sym("s_1")x1200xf64>
    }
    sdir.state @yield_61 {
    }
    sdir.state @loopReturn_46 {
    }
    sdir.state @exit_47 {
    }
    sdir.edge {assign = ["loopIdx_42: ref"]} (ref: %8: !sdir.array<index>) @init_43 -> @guard_44
    sdir.edge {condition = "loopIdx_42 < ref"} (ref: %14: !sdir.array<index>) @guard_44 -> @body_45
    sdir.edge {assign = ["loopIdx_42: loopIdx_42 + ref"]} (ref: %7: !sdir.array<index>) @loopReturn_46 -> @guard_44
    sdir.edge {condition = "not(loopIdx_42 < ref)"} (ref: %14: !sdir.array<index>) @guard_44 -> @exit_47
    sdir.state @state_63 {
      %16 = sdir.sym("loopIdx_15") : index
      %17 = sdir.sym("loopIdx_27") : index
      %18 = sdir.load %arg4[%16, %17] : !sdir.memlet<sym("s_1")x1200xf64> -> f64
      %19 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %18, %19[] : f64 -> !sdir.memlet<f64>
      %20 = sdir.load %19[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_64 {
      sdir.tasklet @task_66(%arg5: f64, %arg6: f64) -> f64 {
        %21 = arith.mulf %arg5, %arg6 : f64
        sdir.return %21 : f64
      }
      %16 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      %17 = sdir.load %16[] : !sdir.memlet<f64> -> f64
      %18 = sdir.call @task_66(%arg2, %17) : (f64, f64) -> f64
      %19 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %18, %19[] : f64 -> !sdir.memlet<f64>
      %20 = sdir.load %19[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_67 {
      %16 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      %17 = sdir.load %16[] : !sdir.memlet<f64> -> f64
      %18 = sdir.sym("loopIdx_15") : index
      %19 = sdir.sym("loopIdx_27") : index
      sdir.store %17, %arg4[%18, %19] : f64 -> !sdir.memlet<sym("s_1")x1200xf64>
    }
    sdir.state @yield_68 {
    }
    sdir.state @loopReturn_31 {
    }
    sdir.state @exit_32 {
    }
    sdir.edge {assign = ["loopIdx_27: ref"]} (ref: %11: !sdir.array<index>) @init_28 -> @guard_29
    sdir.edge {condition = "loopIdx_27 < ref"} (ref: %15: !sdir.array<index>) @guard_29 -> @body_30
    sdir.edge {assign = ["loopIdx_27: loopIdx_27 + ref"]} (ref: %10: !sdir.array<index>) @loopReturn_31 -> @guard_29
    sdir.edge {condition = "not(loopIdx_27 < ref)"} (ref: %15: !sdir.array<index>) @guard_29 -> @exit_32
    sdir.state @yield_69 {
    }
    sdir.state @loopReturn_19 {
    }
    sdir.state @exit_20 {
    }
    sdir.edge {assign = ["loopIdx_15: ref"]} (ref: %13: !sdir.array<index>) @init_16 -> @guard_17
    sdir.edge {condition = "loopIdx_15 < ref"} (ref: %14: !sdir.array<index>) @guard_17 -> @body_18
    sdir.edge {assign = ["loopIdx_15: loopIdx_15 + ref"]} (ref: %12: !sdir.array<index>) @loopReturn_19 -> @guard_17
    sdir.edge {condition = "not(loopIdx_15 < ref)"} (ref: %14: !sdir.array<index>) @guard_17 -> @exit_20
    sdir.state @return_70 {
    }
    sdir.edge @init_2 -> @state_3
    sdir.edge @state_3 -> @state_6
    sdir.edge @state_6 -> @state_9
    sdir.edge @state_9 -> @state_12
    sdir.edge @state_12 -> @init_16
    sdir.edge @body_18 -> @state_21
    sdir.edge @state_21 -> @state_24
    sdir.edge @state_24 -> @init_28
    sdir.edge @body_30 -> @state_33
    sdir.edge @state_33 -> @state_36
    sdir.edge @state_36 -> @state_39
    sdir.edge @state_39 -> @init_43
    sdir.edge @body_45 -> @state_49
    sdir.edge @state_49 -> @state_51
    sdir.edge @state_51 -> @state_52
    sdir.edge @state_52 -> @state_56
    sdir.edge @state_56 -> @state_57
    sdir.edge @state_57 -> @state_60
    sdir.edge @state_60 -> @yield_61
    sdir.edge @yield_61 -> @loopReturn_46
    sdir.edge @exit_47 -> @state_63
    sdir.edge @state_63 -> @state_64
    sdir.edge @state_64 -> @state_67
    sdir.edge @state_67 -> @yield_68
    sdir.edge @yield_68 -> @loopReturn_31
    sdir.edge @exit_32 -> @yield_69
    sdir.edge @yield_69 -> @loopReturn_19
    sdir.edge @exit_20 -> @return_70
  }
}

