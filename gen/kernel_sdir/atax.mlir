module  {
  sdir.sdfg {entry = @init_4} @kernel_atax(%arg0: i32, %arg1: i32, %arg2: !sdir.memlet<sym("s_0")x2100xf64>, %arg3: !sdir.memlet<sym("s_1")xf64>, %arg4: !sdir.memlet<sym("s_2")xf64>, %arg5: !sdir.memlet<sym("s_3")xf64>) {
    %0 = sdir.alloc_transient {name = "_tmp_95"}() : !sdir.array<f64>
    %1 = sdir.alloc_transient {name = "_tmp_92"}() : !sdir.array<f64>
    %2 = sdir.alloc_transient {name = "_tmp_89"}() : !sdir.array<f64>
    %3 = sdir.alloc_transient {name = "_tmp_87"}() : !sdir.array<f64>
    %4 = sdir.alloc_transient {name = "_tmp_85"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_79")
    %5 = sdir.alloc_transient {name = "_tmp_77"}() : !sdir.array<index>
    %6 = sdir.alloc_transient {name = "_tmp_74"}() : !sdir.array<index>
    %7 = sdir.alloc_transient {name = "_tmp_69"}() : !sdir.array<f64>
    %8 = sdir.alloc_transient {name = "_tmp_66"}() : !sdir.array<f64>
    %9 = sdir.alloc_transient {name = "_tmp_63"}() : !sdir.array<f64>
    %10 = sdir.alloc_transient {name = "_tmp_61"}() : !sdir.array<f64>
    %11 = sdir.alloc_transient {name = "_tmp_59"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_53")
    %12 = sdir.alloc_transient {name = "_tmp_51"}() : !sdir.array<index>
    %13 = sdir.alloc_transient {name = "_tmp_48"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_40")
    %14 = sdir.alloc_transient {name = "_tmp_38"}() : !sdir.array<index>
    %15 = sdir.alloc_transient {name = "_tmp_35"}() : !sdir.array<index>
    %16 = sdir.alloc_transient {name = "_tmp_32"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_23")
    %17 = sdir.alloc_transient {name = "_tmp_21"}() : !sdir.array<index>
    %18 = sdir.alloc_transient {name = "_tmp_18"}() : !sdir.array<index>
    %19 = sdir.alloc_transient {name = "_tmp_15"}() : !sdir.array<index>
    %20 = sdir.alloc_transient {name = "_tmp_12"}() : !sdir.array<index>
    %21 = sdir.alloc_transient {name = "_tmp_9"}() : !sdir.array<index>
    %22 = sdir.alloc_transient {name = "_tmp_6"}() : !sdir.array<f64>
    sdir.state @init_4 {
    }
    sdir.state @state_5 {
      sdir.tasklet @task_7() -> f64 {
        %cst = arith.constant 0.000000e+00 : f64
        sdir.return %cst : f64
      }
      %23 = sdir.call @task_7() : () -> f64
      %24 = sdir.get_access %22 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %23, %24[] : f64 -> !sdir.memlet<f64>
      %25 = sdir.load %24[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_8 {
      sdir.tasklet @task_10(%arg6: i32) -> index {
        %26 = arith.index_cast %arg6 : i32 to index
        sdir.return %26 : index
      }
      %23 = sdir.call @task_10(%arg1) : (i32) -> index
      %24 = sdir.get_access %21 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_11 {
      sdir.tasklet @task_13(%arg6: i32) -> index {
        %26 = arith.index_cast %arg6 : i32 to index
        sdir.return %26 : index
      }
      %23 = sdir.call @task_13(%arg1) : (i32) -> index
      %24 = sdir.get_access %20 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_14 {
      sdir.tasklet @task_16(%arg6: i32) -> index {
        %26 = arith.index_cast %arg6 : i32 to index
        sdir.return %26 : index
      }
      %23 = sdir.call @task_16(%arg1) : (i32) -> index
      %24 = sdir.get_access %19 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_17 {
      sdir.tasklet @task_19() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %23 = sdir.call @task_19() : () -> index
      %24 = sdir.get_access %18 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_20 {
      sdir.tasklet @task_22() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %23 = sdir.call @task_22() : () -> index
      %24 = sdir.get_access %17 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_24 {
      %23 = sdir.sym("loopIdx_23") : index
    }
    sdir.state @guard_25 {
    }
    sdir.state @body_26 {
    }
    sdir.state @state_29 {
      %23 = sdir.get_access %22 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.sym("loopIdx_23") : index
      sdir.store %24, %arg4[%25] : f64 -> !sdir.memlet<sym("s_2")xf64>
    }
    sdir.state @yield_30 {
    }
    sdir.state @loopReturn_27 {
    }
    sdir.state @exit_28 {
    }
    sdir.edge {assign = ["loopIdx_23: ref"]} (ref: %18: !sdir.array<index>) @init_24 -> @guard_25
    sdir.edge {condition = "loopIdx_23 < ref"} (ref: %19: !sdir.array<index>) @guard_25 -> @body_26
    sdir.edge {assign = ["loopIdx_23: loopIdx_23 + ref"]} (ref: %17: !sdir.array<index>) @loopReturn_27 -> @guard_25
    sdir.edge {condition = "not(loopIdx_23 < ref)"} (ref: %19: !sdir.array<index>) @guard_25 -> @exit_28
    sdir.state @state_31 {
      sdir.tasklet @task_33(%arg6: i32) -> index {
        %26 = arith.index_cast %arg6 : i32 to index
        sdir.return %26 : index
      }
      %23 = sdir.call @task_33(%arg0) : (i32) -> index
      %24 = sdir.get_access %16 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_34 {
      sdir.tasklet @task_36() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %23 = sdir.call @task_36() : () -> index
      %24 = sdir.get_access %15 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_37 {
      sdir.tasklet @task_39() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %23 = sdir.call @task_39() : () -> index
      %24 = sdir.get_access %14 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_41 {
      %23 = sdir.sym("loopIdx_40") : index
    }
    sdir.state @guard_42 {
    }
    sdir.state @body_43 {
    }
    sdir.state @state_46 {
      %23 = sdir.get_access %22 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.sym("loopIdx_40") : index
      sdir.store %24, %arg5[%25] : f64 -> !sdir.memlet<sym("s_3")xf64>
    }
    sdir.state @state_47 {
      sdir.tasklet @task_49() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %23 = sdir.call @task_49() : () -> index
      %24 = sdir.get_access %13 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_50 {
      sdir.tasklet @task_52() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %23 = sdir.call @task_52() : () -> index
      %24 = sdir.get_access %12 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_54 {
      %23 = sdir.sym("loopIdx_53") : index
    }
    sdir.state @guard_55 {
    }
    sdir.state @body_56 {
    }
    sdir.state @state_60 {
      %23 = sdir.sym("loopIdx_40") : index
      %24 = sdir.load %arg5[%23] : !sdir.memlet<sym("s_3")xf64> -> f64
      %25 = sdir.get_access %11 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_62 {
      %23 = sdir.sym("loopIdx_40") : index
      %24 = sdir.sym("loopIdx_53") : index
      %25 = sdir.load %arg2[%23, %24] : !sdir.memlet<sym("s_0")x2100xf64> -> f64
      %26 = sdir.get_access %10 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %25, %26[] : f64 -> !sdir.memlet<f64>
      %27 = sdir.load %26[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_64 {
      %23 = sdir.sym("loopIdx_53") : index
      %24 = sdir.load %arg3[%23] : !sdir.memlet<sym("s_1")xf64> -> f64
      %25 = sdir.get_access %9 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_65 {
      sdir.tasklet @task_67(%arg6: f64, %arg7: f64) -> f64 {
        %30 = arith.mulf %arg6, %arg7 : f64
        sdir.return %30 : f64
      }
      %23 = sdir.get_access %10 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.get_access %9 : !sdir.array<f64> -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
      %27 = sdir.call @task_67(%24, %26) : (f64, f64) -> f64
      %28 = sdir.get_access %8 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %27, %28[] : f64 -> !sdir.memlet<f64>
      %29 = sdir.load %28[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_68 {
      sdir.tasklet @task_70(%arg6: f64, %arg7: f64) -> f64 {
        %30 = arith.addf %arg6, %arg7 : f64
        sdir.return %30 : f64
      }
      %23 = sdir.get_access %11 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.get_access %8 : !sdir.array<f64> -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
      %27 = sdir.call @task_70(%24, %26) : (f64, f64) -> f64
      %28 = sdir.get_access %7 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %27, %28[] : f64 -> !sdir.memlet<f64>
      %29 = sdir.load %28[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_71 {
      %23 = sdir.get_access %7 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.sym("loopIdx_40") : index
      sdir.store %24, %arg5[%25] : f64 -> !sdir.memlet<sym("s_3")xf64>
    }
    sdir.state @yield_72 {
    }
    sdir.state @loopReturn_57 {
    }
    sdir.state @exit_58 {
    }
    sdir.edge {assign = ["loopIdx_53: ref"]} (ref: %13: !sdir.array<index>) @init_54 -> @guard_55
    sdir.edge {condition = "loopIdx_53 < ref"} (ref: %21: !sdir.array<index>) @guard_55 -> @body_56
    sdir.edge {assign = ["loopIdx_53: loopIdx_53 + ref"]} (ref: %12: !sdir.array<index>) @loopReturn_57 -> @guard_55
    sdir.edge {condition = "not(loopIdx_53 < ref)"} (ref: %21: !sdir.array<index>) @guard_55 -> @exit_58
    sdir.state @state_73 {
      sdir.tasklet @task_75() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %23 = sdir.call @task_75() : () -> index
      %24 = sdir.get_access %6 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_76 {
      sdir.tasklet @task_78() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %23 = sdir.call @task_78() : () -> index
      %24 = sdir.get_access %5 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %23, %24[] : index -> !sdir.memlet<index>
      %25 = sdir.load %24[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_80 {
      %23 = sdir.sym("loopIdx_79") : index
    }
    sdir.state @guard_81 {
    }
    sdir.state @body_82 {
    }
    sdir.state @state_86 {
      %23 = sdir.sym("loopIdx_79") : index
      %24 = sdir.load %arg4[%23] : !sdir.memlet<sym("s_2")xf64> -> f64
      %25 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_88 {
      %23 = sdir.sym("loopIdx_40") : index
      %24 = sdir.sym("loopIdx_79") : index
      %25 = sdir.load %arg2[%23, %24] : !sdir.memlet<sym("s_0")x2100xf64> -> f64
      %26 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %25, %26[] : f64 -> !sdir.memlet<f64>
      %27 = sdir.load %26[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_90 {
      %23 = sdir.sym("loopIdx_40") : index
      %24 = sdir.load %arg5[%23] : !sdir.memlet<sym("s_3")xf64> -> f64
      %25 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_91 {
      sdir.tasklet @task_93(%arg6: f64, %arg7: f64) -> f64 {
        %30 = arith.mulf %arg6, %arg7 : f64
        sdir.return %30 : f64
      }
      %23 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
      %27 = sdir.call @task_93(%24, %26) : (f64, f64) -> f64
      %28 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %27, %28[] : f64 -> !sdir.memlet<f64>
      %29 = sdir.load %28[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_94 {
      sdir.tasklet @task_96(%arg6: f64, %arg7: f64) -> f64 {
        %30 = arith.addf %arg6, %arg7 : f64
        sdir.return %30 : f64
      }
      %23 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
      %27 = sdir.call @task_96(%24, %26) : (f64, f64) -> f64
      %28 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %27, %28[] : f64 -> !sdir.memlet<f64>
      %29 = sdir.load %28[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_97 {
      %23 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.sym("loopIdx_79") : index
      sdir.store %24, %arg4[%25] : f64 -> !sdir.memlet<sym("s_2")xf64>
    }
    sdir.state @yield_98 {
    }
    sdir.state @loopReturn_83 {
    }
    sdir.state @exit_84 {
    }
    sdir.edge {assign = ["loopIdx_79: ref"]} (ref: %6: !sdir.array<index>) @init_80 -> @guard_81
    sdir.edge {condition = "loopIdx_79 < ref"} (ref: %20: !sdir.array<index>) @guard_81 -> @body_82
    sdir.edge {assign = ["loopIdx_79: loopIdx_79 + ref"]} (ref: %5: !sdir.array<index>) @loopReturn_83 -> @guard_81
    sdir.edge {condition = "not(loopIdx_79 < ref)"} (ref: %20: !sdir.array<index>) @guard_81 -> @exit_84
    sdir.state @yield_99 {
    }
    sdir.state @loopReturn_44 {
    }
    sdir.state @exit_45 {
    }
    sdir.edge {assign = ["loopIdx_40: ref"]} (ref: %15: !sdir.array<index>) @init_41 -> @guard_42
    sdir.edge {condition = "loopIdx_40 < ref"} (ref: %16: !sdir.array<index>) @guard_42 -> @body_43
    sdir.edge {assign = ["loopIdx_40: loopIdx_40 + ref"]} (ref: %14: !sdir.array<index>) @loopReturn_44 -> @guard_42
    sdir.edge {condition = "not(loopIdx_40 < ref)"} (ref: %16: !sdir.array<index>) @guard_42 -> @exit_45
    sdir.state @return_100 {
    }
    sdir.edge @init_4 -> @state_5
    sdir.edge @state_5 -> @state_8
    sdir.edge @state_8 -> @state_11
    sdir.edge @state_11 -> @state_14
    sdir.edge @state_14 -> @state_17
    sdir.edge @state_17 -> @state_20
    sdir.edge @state_20 -> @init_24
    sdir.edge @body_26 -> @state_29
    sdir.edge @state_29 -> @yield_30
    sdir.edge @yield_30 -> @loopReturn_27
    sdir.edge @exit_28 -> @state_31
    sdir.edge @state_31 -> @state_34
    sdir.edge @state_34 -> @state_37
    sdir.edge @state_37 -> @init_41
    sdir.edge @body_43 -> @state_46
    sdir.edge @state_46 -> @state_47
    sdir.edge @state_47 -> @state_50
    sdir.edge @state_50 -> @init_54
    sdir.edge @body_56 -> @state_60
    sdir.edge @state_60 -> @state_62
    sdir.edge @state_62 -> @state_64
    sdir.edge @state_64 -> @state_65
    sdir.edge @state_65 -> @state_68
    sdir.edge @state_68 -> @state_71
    sdir.edge @state_71 -> @yield_72
    sdir.edge @yield_72 -> @loopReturn_57
    sdir.edge @exit_58 -> @state_73
    sdir.edge @state_73 -> @state_76
    sdir.edge @state_76 -> @init_80
    sdir.edge @body_82 -> @state_86
    sdir.edge @state_86 -> @state_88
    sdir.edge @state_88 -> @state_90
    sdir.edge @state_90 -> @state_91
    sdir.edge @state_91 -> @state_94
    sdir.edge @state_94 -> @state_97
    sdir.edge @state_97 -> @yield_98
    sdir.edge @yield_98 -> @loopReturn_83
    sdir.edge @exit_84 -> @yield_99
    sdir.edge @yield_99 -> @loopReturn_44
    sdir.edge @exit_45 -> @return_100
  }
}

