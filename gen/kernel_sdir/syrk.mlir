module  {
  sdir.sdfg {entry = @init_2} @kernel_syrk(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: !sdir.memlet<sym("s_0")x1200xf64>, %arg5: !sdir.memlet<sym("s_1")x1000xf64>) {
    %0 = sdir.alloc_transient {name = "_tmp_89"}() : !sdir.array<f64>
    %1 = sdir.alloc_transient {name = "_tmp_86"}() : !sdir.array<f64>
    %2 = sdir.alloc_transient {name = "_tmp_84"}() : !sdir.array<f64>
    %3 = sdir.alloc_transient {name = "_tmp_81"}() : !sdir.array<f64>
    %4 = sdir.alloc_transient {name = "_tmp_79"}() : !sdir.array<f64>
    %5 = sdir.alloc_transient {name = "_tmp_76"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_70")
    %6 = sdir.alloc_transient {name = "_tmp_68"}() : !sdir.array<index>
    %7 = sdir.alloc_transient {name = "_tmp_65"}() : !sdir.array<index>
    %8 = sdir.alloc_transient {name = "_tmp_62"}() : !sdir.array<index>
    %9 = sdir.alloc_transient {name = "_tmp_59"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_52")
    %10 = sdir.alloc_transient {name = "_tmp_50"}() : !sdir.array<index>
    %11 = sdir.alloc_transient {name = "_tmp_47"}() : !sdir.array<index>
    %12 = sdir.alloc_transient {name = "_tmp_42"}() : !sdir.array<f64>
    %13 = sdir.alloc_transient {name = "_tmp_39"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_33")
    %14 = sdir.alloc_transient {name = "_tmp_31"}() : !sdir.array<index>
    %15 = sdir.alloc_transient {name = "_tmp_28"}() : !sdir.array<index>
    %16 = sdir.alloc_transient {name = "_tmp_25"}() : !sdir.array<index>
    %17 = sdir.alloc_transient {name = "_tmp_22"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_15")
    %18 = sdir.alloc_transient {name = "_tmp_13"}() : !sdir.array<index>
    %19 = sdir.alloc_transient {name = "_tmp_10"}() : !sdir.array<index>
    %20 = sdir.alloc_transient {name = "_tmp_7"}() : !sdir.array<index>
    %21 = sdir.alloc_transient {name = "_tmp_4"}() : !sdir.array<index>
    sdir.state @init_2 {
    }
    sdir.state @state_3 {
      sdir.tasklet @task_5(%arg6: i32) -> index {
        %25 = arith.index_cast %arg6 : i32 to index
        sdir.return %25 : index
      }
      %22 = sdir.call @task_5(%arg1) : (i32) -> index
      %23 = sdir.get_access %21 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_6 {
      sdir.tasklet @task_8(%arg6: i32) -> index {
        %25 = arith.index_cast %arg6 : i32 to index
        sdir.return %25 : index
      }
      %22 = sdir.call @task_8(%arg0) : (i32) -> index
      %23 = sdir.get_access %20 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_9 {
      sdir.tasklet @task_11() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %22 = sdir.call @task_11() : () -> index
      %23 = sdir.get_access %19 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_12 {
      sdir.tasklet @task_14() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %22 = sdir.call @task_14() : () -> index
      %23 = sdir.get_access %18 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_16 {
      %22 = sdir.sym("loopIdx_15") : index
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
      %22 = sdir.call @task_23() : () -> index
      %23 = sdir.get_access %17 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_24 {
      sdir.tasklet @task_26() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %22 = sdir.call @task_26() : () -> index
      %23 = sdir.get_access %16 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_27 {
      sdir.tasklet @task_29(%arg6: index, %arg7: index) -> index {
        %28 = arith.addi %arg6, %arg7 : index
        sdir.return %28 : index
      }
      %22 = sdir.sym("loopIdx_15") : index
      %23 = sdir.get_access %16 : !sdir.array<index> -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
      %25 = sdir.call @task_29(%22, %24) : (index, index) -> index
      %26 = sdir.get_access %15 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %25, %26[] : index -> !sdir.memlet<index>
      %27 = sdir.load %26[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_30 {
      sdir.tasklet @task_32() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %22 = sdir.call @task_32() : () -> index
      %23 = sdir.get_access %14 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_34 {
      %22 = sdir.sym("loopIdx_33") : index
    }
    sdir.state @guard_35 {
    }
    sdir.state @body_36 {
    }
    sdir.state @state_40 {
      %22 = sdir.sym("loopIdx_15") : index
      %23 = sdir.sym("loopIdx_33") : index
      %24 = sdir.load %arg4[%22, %23] : !sdir.memlet<sym("s_0")x1200xf64> -> f64
      %25 = sdir.get_access %13 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_41 {
      sdir.tasklet @task_43(%arg6: f64, %arg7: f64) -> f64 {
        %27 = arith.mulf %arg6, %arg7 : f64
        sdir.return %27 : f64
      }
      %22 = sdir.get_access %13 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_43(%23, %arg3) : (f64, f64) -> f64
      %25 = sdir.get_access %12 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_44 {
      %22 = sdir.get_access %12 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.sym("loopIdx_15") : index
      %25 = sdir.sym("loopIdx_33") : index
      sdir.store %23, %arg4[%24, %25] : f64 -> !sdir.memlet<sym("s_0")x1200xf64>
    }
    sdir.state @yield_45 {
    }
    sdir.state @loopReturn_37 {
    }
    sdir.state @exit_38 {
    }
    sdir.edge {assign = ["loopIdx_33: ref"]} (ref: %17: !sdir.array<index>) @init_34 -> @guard_35
    sdir.edge {condition = "loopIdx_33 < ref"} (ref: %15: !sdir.array<index>) @guard_35 -> @body_36
    sdir.edge {assign = ["loopIdx_33: loopIdx_33 + ref"]} (ref: %14: !sdir.array<index>) @loopReturn_37 -> @guard_35
    sdir.edge {condition = "not(loopIdx_33 < ref)"} (ref: %15: !sdir.array<index>) @guard_35 -> @exit_38
    sdir.state @state_46 {
      sdir.tasklet @task_48() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %22 = sdir.call @task_48() : () -> index
      %23 = sdir.get_access %11 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_49 {
      sdir.tasklet @task_51() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %22 = sdir.call @task_51() : () -> index
      %23 = sdir.get_access %10 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_53 {
      %22 = sdir.sym("loopIdx_52") : index
    }
    sdir.state @guard_54 {
    }
    sdir.state @body_55 {
    }
    sdir.state @state_58 {
      sdir.tasklet @task_60() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %22 = sdir.call @task_60() : () -> index
      %23 = sdir.get_access %9 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_61 {
      sdir.tasklet @task_63() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %22 = sdir.call @task_63() : () -> index
      %23 = sdir.get_access %8 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_64 {
      sdir.tasklet @task_66(%arg6: index, %arg7: index) -> index {
        %28 = arith.addi %arg6, %arg7 : index
        sdir.return %28 : index
      }
      %22 = sdir.sym("loopIdx_15") : index
      %23 = sdir.get_access %8 : !sdir.array<index> -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
      %25 = sdir.call @task_66(%22, %24) : (index, index) -> index
      %26 = sdir.get_access %7 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %25, %26[] : index -> !sdir.memlet<index>
      %27 = sdir.load %26[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_67 {
      sdir.tasklet @task_69() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %22 = sdir.call @task_69() : () -> index
      %23 = sdir.get_access %6 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %22, %23[] : index -> !sdir.memlet<index>
      %24 = sdir.load %23[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_71 {
      %22 = sdir.sym("loopIdx_70") : index
    }
    sdir.state @guard_72 {
    }
    sdir.state @body_73 {
    }
    sdir.state @state_77 {
      %22 = sdir.sym("loopIdx_15") : index
      %23 = sdir.sym("loopIdx_52") : index
      %24 = sdir.load %arg5[%22, %23] : !sdir.memlet<sym("s_1")x1000xf64> -> f64
      %25 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_78 {
      sdir.tasklet @task_80(%arg6: f64, %arg7: f64) -> f64 {
        %27 = arith.mulf %arg6, %arg7 : f64
        sdir.return %27 : f64
      }
      %22 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_80(%arg2, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_82 {
      %22 = sdir.sym("loopIdx_70") : index
      %23 = sdir.sym("loopIdx_52") : index
      %24 = sdir.load %arg5[%22, %23] : !sdir.memlet<sym("s_1")x1000xf64> -> f64
      %25 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_83 {
      sdir.tasklet @task_85(%arg6: f64, %arg7: f64) -> f64 {
        %29 = arith.mulf %arg6, %arg7 : f64
        sdir.return %29 : f64
      }
      %22 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      %25 = sdir.load %24[] : !sdir.memlet<f64> -> f64
      %26 = sdir.call @task_85(%23, %25) : (f64, f64) -> f64
      %27 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %26, %27[] : f64 -> !sdir.memlet<f64>
      %28 = sdir.load %27[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_87 {
      %22 = sdir.sym("loopIdx_15") : index
      %23 = sdir.sym("loopIdx_70") : index
      %24 = sdir.load %arg4[%22, %23] : !sdir.memlet<sym("s_0")x1200xf64> -> f64
      %25 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_88 {
      sdir.tasklet @task_90(%arg6: f64, %arg7: f64) -> f64 {
        %29 = arith.addf %arg6, %arg7 : f64
        sdir.return %29 : f64
      }
      %22 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      %25 = sdir.load %24[] : !sdir.memlet<f64> -> f64
      %26 = sdir.call @task_90(%23, %25) : (f64, f64) -> f64
      %27 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %26, %27[] : f64 -> !sdir.memlet<f64>
      %28 = sdir.load %27[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_91 {
      %22 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.sym("loopIdx_15") : index
      %25 = sdir.sym("loopIdx_70") : index
      sdir.store %23, %arg4[%24, %25] : f64 -> !sdir.memlet<sym("s_0")x1200xf64>
    }
    sdir.state @yield_92 {
    }
    sdir.state @loopReturn_74 {
    }
    sdir.state @exit_75 {
    }
    sdir.edge {assign = ["loopIdx_70: ref"]} (ref: %9: !sdir.array<index>) @init_71 -> @guard_72
    sdir.edge {condition = "loopIdx_70 < ref"} (ref: %7: !sdir.array<index>) @guard_72 -> @body_73
    sdir.edge {assign = ["loopIdx_70: loopIdx_70 + ref"]} (ref: %6: !sdir.array<index>) @loopReturn_74 -> @guard_72
    sdir.edge {condition = "not(loopIdx_70 < ref)"} (ref: %7: !sdir.array<index>) @guard_72 -> @exit_75
    sdir.state @yield_93 {
    }
    sdir.state @loopReturn_56 {
    }
    sdir.state @exit_57 {
    }
    sdir.edge {assign = ["loopIdx_52: ref"]} (ref: %11: !sdir.array<index>) @init_53 -> @guard_54
    sdir.edge {condition = "loopIdx_52 < ref"} (ref: %21: !sdir.array<index>) @guard_54 -> @body_55
    sdir.edge {assign = ["loopIdx_52: loopIdx_52 + ref"]} (ref: %10: !sdir.array<index>) @loopReturn_56 -> @guard_54
    sdir.edge {condition = "not(loopIdx_52 < ref)"} (ref: %21: !sdir.array<index>) @guard_54 -> @exit_57
    sdir.state @yield_94 {
    }
    sdir.state @loopReturn_19 {
    }
    sdir.state @exit_20 {
    }
    sdir.edge {assign = ["loopIdx_15: ref"]} (ref: %19: !sdir.array<index>) @init_16 -> @guard_17
    sdir.edge {condition = "loopIdx_15 < ref"} (ref: %20: !sdir.array<index>) @guard_17 -> @body_18
    sdir.edge {assign = ["loopIdx_15: loopIdx_15 + ref"]} (ref: %18: !sdir.array<index>) @loopReturn_19 -> @guard_17
    sdir.edge {condition = "not(loopIdx_15 < ref)"} (ref: %20: !sdir.array<index>) @guard_17 -> @exit_20
    sdir.state @return_95 {
    }
    sdir.edge @init_2 -> @state_3
    sdir.edge @state_3 -> @state_6
    sdir.edge @state_6 -> @state_9
    sdir.edge @state_9 -> @state_12
    sdir.edge @state_12 -> @init_16
    sdir.edge @body_18 -> @state_21
    sdir.edge @state_21 -> @state_24
    sdir.edge @state_24 -> @state_27
    sdir.edge @state_27 -> @state_30
    sdir.edge @state_30 -> @init_34
    sdir.edge @body_36 -> @state_40
    sdir.edge @state_40 -> @state_41
    sdir.edge @state_41 -> @state_44
    sdir.edge @state_44 -> @yield_45
    sdir.edge @yield_45 -> @loopReturn_37
    sdir.edge @exit_38 -> @state_46
    sdir.edge @state_46 -> @state_49
    sdir.edge @state_49 -> @init_53
    sdir.edge @body_55 -> @state_58
    sdir.edge @state_58 -> @state_61
    sdir.edge @state_61 -> @state_64
    sdir.edge @state_64 -> @state_67
    sdir.edge @state_67 -> @init_71
    sdir.edge @body_73 -> @state_77
    sdir.edge @state_77 -> @state_78
    sdir.edge @state_78 -> @state_82
    sdir.edge @state_82 -> @state_83
    sdir.edge @state_83 -> @state_87
    sdir.edge @state_87 -> @state_88
    sdir.edge @state_88 -> @state_91
    sdir.edge @state_91 -> @yield_92
    sdir.edge @yield_92 -> @loopReturn_74
    sdir.edge @exit_75 -> @yield_93
    sdir.edge @yield_93 -> @loopReturn_56
    sdir.edge @exit_57 -> @yield_94
    sdir.edge @yield_94 -> @loopReturn_19
    sdir.edge @exit_20 -> @return_95
  }
}

