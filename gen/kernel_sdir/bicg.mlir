module  {
  sdir.sdfg {entry = @init_5} @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: !sdir.memlet<sym("s_0")x1900xf64>, %arg3: !sdir.memlet<sym("s_1")xf64>, %arg4: !sdir.memlet<sym("s_2")xf64>, %arg5: !sdir.memlet<sym("s_3")xf64>, %arg6: !sdir.memlet<sym("s_4")xf64>) {
    %0 = sdir.alloc_transient {name = "_tmp_80"}() : !sdir.array<f64>
    %1 = sdir.alloc_transient {name = "_tmp_77"}() : !sdir.array<f64>
    %2 = sdir.alloc_transient {name = "_tmp_74"}() : !sdir.array<f64>
    %3 = sdir.alloc_transient {name = "_tmp_72"}() : !sdir.array<f64>
    %4 = sdir.alloc_transient {name = "_tmp_70"}() : !sdir.array<f64>
    %5 = sdir.alloc_transient {name = "_tmp_67"}() : !sdir.array<f64>
    %6 = sdir.alloc_transient {name = "_tmp_64"}() : !sdir.array<f64>
    %7 = sdir.alloc_transient {name = "_tmp_61"}() : !sdir.array<f64>
    %8 = sdir.alloc_transient {name = "_tmp_59"}() : !sdir.array<f64>
    %9 = sdir.alloc_transient {name = "_tmp_57"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_51")
    %10 = sdir.alloc_transient {name = "_tmp_49"}() : !sdir.array<index>
    %11 = sdir.alloc_transient {name = "_tmp_46"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_38")
    %12 = sdir.alloc_transient {name = "_tmp_36"}() : !sdir.array<index>
    %13 = sdir.alloc_transient {name = "_tmp_33"}() : !sdir.array<index>
    %14 = sdir.alloc_transient {name = "_tmp_30"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_21")
    %15 = sdir.alloc_transient {name = "_tmp_19"}() : !sdir.array<index>
    %16 = sdir.alloc_transient {name = "_tmp_16"}() : !sdir.array<index>
    %17 = sdir.alloc_transient {name = "_tmp_13"}() : !sdir.array<index>
    %18 = sdir.alloc_transient {name = "_tmp_10"}() : !sdir.array<index>
    %19 = sdir.alloc_transient {name = "_tmp_7"}() : !sdir.array<f64>
    sdir.state @init_5 {
    }
    sdir.state @state_6 {
      sdir.tasklet @task_8() -> f64 {
        %cst = arith.constant 0.000000e+00 : f64
        sdir.return %cst : f64
      }
      %20 = sdir.call @task_8() : () -> f64
      %21 = sdir.get_access %19 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %20, %21[] : f64 -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_9 {
      sdir.tasklet @task_11(%arg7: i32) -> index {
        %23 = arith.index_cast %arg7 : i32 to index
        sdir.return %23 : index
      }
      %20 = sdir.call @task_11(%arg0) : (i32) -> index
      %21 = sdir.get_access %18 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_12 {
      sdir.tasklet @task_14(%arg7: i32) -> index {
        %23 = arith.index_cast %arg7 : i32 to index
        sdir.return %23 : index
      }
      %20 = sdir.call @task_14(%arg0) : (i32) -> index
      %21 = sdir.get_access %17 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_15 {
      sdir.tasklet @task_17() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_17() : () -> index
      %21 = sdir.get_access %16 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_18 {
      sdir.tasklet @task_20() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_20() : () -> index
      %21 = sdir.get_access %15 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_22 {
      %20 = sdir.sym("loopIdx_21") : index
    }
    sdir.state @guard_23 {
    }
    sdir.state @body_24 {
    }
    sdir.state @state_27 {
      %20 = sdir.get_access %19 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.sym("loopIdx_21") : index
      sdir.store %21, %arg3[%22] : f64 -> !sdir.memlet<sym("s_1")xf64>
    }
    sdir.state @yield_28 {
    }
    sdir.state @loopReturn_25 {
    }
    sdir.state @exit_26 {
    }
    sdir.edge {assign = ["loopIdx_21: ref"]} (ref: %16: !sdir.array<index>) @init_22 -> @guard_23
    sdir.edge {condition = "loopIdx_21 < ref"} (ref: %17: !sdir.array<index>) @guard_23 -> @body_24
    sdir.edge {assign = ["loopIdx_21: loopIdx_21 + ref"]} (ref: %15: !sdir.array<index>) @loopReturn_25 -> @guard_23
    sdir.edge {condition = "not(loopIdx_21 < ref)"} (ref: %17: !sdir.array<index>) @guard_23 -> @exit_26
    sdir.state @state_29 {
      sdir.tasklet @task_31(%arg7: i32) -> index {
        %23 = arith.index_cast %arg7 : i32 to index
        sdir.return %23 : index
      }
      %20 = sdir.call @task_31(%arg1) : (i32) -> index
      %21 = sdir.get_access %14 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_32 {
      sdir.tasklet @task_34() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_34() : () -> index
      %21 = sdir.get_access %13 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_35 {
      sdir.tasklet @task_37() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_37() : () -> index
      %21 = sdir.get_access %12 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_39 {
      %20 = sdir.sym("loopIdx_38") : index
    }
    sdir.state @guard_40 {
    }
    sdir.state @body_41 {
    }
    sdir.state @state_44 {
      %20 = sdir.get_access %19 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.sym("loopIdx_38") : index
      sdir.store %21, %arg4[%22] : f64 -> !sdir.memlet<sym("s_2")xf64>
    }
    sdir.state @state_45 {
      sdir.tasklet @task_47() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_47() : () -> index
      %21 = sdir.get_access %11 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_48 {
      sdir.tasklet @task_50() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_50() : () -> index
      %21 = sdir.get_access %10 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_52 {
      %20 = sdir.sym("loopIdx_51") : index
    }
    sdir.state @guard_53 {
    }
    sdir.state @body_54 {
    }
    sdir.state @state_58 {
      %20 = sdir.sym("loopIdx_51") : index
      %21 = sdir.load %arg3[%20] : !sdir.memlet<sym("s_1")xf64> -> f64
      %22 = sdir.get_access %9 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_60 {
      %20 = sdir.sym("loopIdx_38") : index
      %21 = sdir.load %arg6[%20] : !sdir.memlet<sym("s_4")xf64> -> f64
      %22 = sdir.get_access %8 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_62 {
      %20 = sdir.sym("loopIdx_38") : index
      %21 = sdir.sym("loopIdx_51") : index
      %22 = sdir.load %arg2[%20, %21] : !sdir.memlet<sym("s_0")x1900xf64> -> f64
      %23 = sdir.get_access %7 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_63 {
      sdir.tasklet @task_65(%arg7: f64, %arg8: f64) -> f64 {
        %27 = arith.mulf %arg7, %arg8 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %8 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %7 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_65(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %6 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_66 {
      sdir.tasklet @task_68(%arg7: f64, %arg8: f64) -> f64 {
        %27 = arith.addf %arg7, %arg8 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %9 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %6 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_68(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_69 {
      %20 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.sym("loopIdx_51") : index
      sdir.store %21, %arg3[%22] : f64 -> !sdir.memlet<sym("s_1")xf64>
    }
    sdir.state @state_71 {
      %20 = sdir.sym("loopIdx_38") : index
      %21 = sdir.load %arg4[%20] : !sdir.memlet<sym("s_2")xf64> -> f64
      %22 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_73 {
      %20 = sdir.sym("loopIdx_38") : index
      %21 = sdir.sym("loopIdx_51") : index
      %22 = sdir.load %arg2[%20, %21] : !sdir.memlet<sym("s_0")x1900xf64> -> f64
      %23 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_75 {
      %20 = sdir.sym("loopIdx_51") : index
      %21 = sdir.load %arg5[%20] : !sdir.memlet<sym("s_3")xf64> -> f64
      %22 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_76 {
      sdir.tasklet @task_78(%arg7: f64, %arg8: f64) -> f64 {
        %27 = arith.mulf %arg7, %arg8 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_78(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_79 {
      sdir.tasklet @task_81(%arg7: f64, %arg8: f64) -> f64 {
        %27 = arith.addf %arg7, %arg8 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_81(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_82 {
      %20 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.sym("loopIdx_38") : index
      sdir.store %21, %arg4[%22] : f64 -> !sdir.memlet<sym("s_2")xf64>
    }
    sdir.state @yield_83 {
    }
    sdir.state @loopReturn_55 {
    }
    sdir.state @exit_56 {
    }
    sdir.edge {assign = ["loopIdx_51: ref"]} (ref: %11: !sdir.array<index>) @init_52 -> @guard_53
    sdir.edge {condition = "loopIdx_51 < ref"} (ref: %18: !sdir.array<index>) @guard_53 -> @body_54
    sdir.edge {assign = ["loopIdx_51: loopIdx_51 + ref"]} (ref: %10: !sdir.array<index>) @loopReturn_55 -> @guard_53
    sdir.edge {condition = "not(loopIdx_51 < ref)"} (ref: %18: !sdir.array<index>) @guard_53 -> @exit_56
    sdir.state @yield_84 {
    }
    sdir.state @loopReturn_42 {
    }
    sdir.state @exit_43 {
    }
    sdir.edge {assign = ["loopIdx_38: ref"]} (ref: %13: !sdir.array<index>) @init_39 -> @guard_40
    sdir.edge {condition = "loopIdx_38 < ref"} (ref: %14: !sdir.array<index>) @guard_40 -> @body_41
    sdir.edge {assign = ["loopIdx_38: loopIdx_38 + ref"]} (ref: %12: !sdir.array<index>) @loopReturn_42 -> @guard_40
    sdir.edge {condition = "not(loopIdx_38 < ref)"} (ref: %14: !sdir.array<index>) @guard_40 -> @exit_43
    sdir.state @return_85 {
    }
    sdir.edge @init_5 -> @state_6
    sdir.edge @state_6 -> @state_9
    sdir.edge @state_9 -> @state_12
    sdir.edge @state_12 -> @state_15
    sdir.edge @state_15 -> @state_18
    sdir.edge @state_18 -> @init_22
    sdir.edge @body_24 -> @state_27
    sdir.edge @state_27 -> @yield_28
    sdir.edge @yield_28 -> @loopReturn_25
    sdir.edge @exit_26 -> @state_29
    sdir.edge @state_29 -> @state_32
    sdir.edge @state_32 -> @state_35
    sdir.edge @state_35 -> @init_39
    sdir.edge @body_41 -> @state_44
    sdir.edge @state_44 -> @state_45
    sdir.edge @state_45 -> @state_48
    sdir.edge @state_48 -> @init_52
    sdir.edge @body_54 -> @state_58
    sdir.edge @state_58 -> @state_60
    sdir.edge @state_60 -> @state_62
    sdir.edge @state_62 -> @state_63
    sdir.edge @state_63 -> @state_66
    sdir.edge @state_66 -> @state_69
    sdir.edge @state_69 -> @state_71
    sdir.edge @state_71 -> @state_73
    sdir.edge @state_73 -> @state_75
    sdir.edge @state_75 -> @state_76
    sdir.edge @state_76 -> @state_79
    sdir.edge @state_79 -> @state_82
    sdir.edge @state_82 -> @yield_83
    sdir.edge @yield_83 -> @loopReturn_55
    sdir.edge @exit_56 -> @yield_84
    sdir.edge @yield_84 -> @loopReturn_42
    sdir.edge @exit_43 -> @return_85
  }
}

