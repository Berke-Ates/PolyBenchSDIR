module  {
  sdir.sdfg {entry = @init_3} @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: !sdir.memlet<sym("s_0")x140x160xf64>, %arg4: !sdir.memlet<sym("s_1")x160xf64>, %arg5: !sdir.memlet<sym("s_2")xf64>) {
    %0 = sdir.alloc_transient {name = "_tmp_95"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_89")
    %1 = sdir.alloc_transient {name = "_tmp_87"}() : !sdir.array<index>
    %2 = sdir.alloc_transient {name = "_tmp_84"}() : !sdir.array<index>
    %3 = sdir.alloc_transient {name = "_tmp_78"}() : !sdir.array<f64>
    %4 = sdir.alloc_transient {name = "_tmp_75"}() : !sdir.array<f64>
    %5 = sdir.alloc_transient {name = "_tmp_73"}() : !sdir.array<f64>
    %6 = sdir.alloc_transient {name = "_tmp_70"}() : !sdir.array<f64>
    %7 = sdir.alloc_transient {name = "_tmp_68"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_62")
    %8 = sdir.alloc_transient {name = "_tmp_60"}() : !sdir.array<index>
    %9 = sdir.alloc_transient {name = "_tmp_57"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_49")
    %10 = sdir.alloc_transient {name = "_tmp_47"}() : !sdir.array<index>
    %11 = sdir.alloc_transient {name = "_tmp_44"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_37")
    %12 = sdir.alloc_transient {name = "_tmp_35"}() : !sdir.array<index>
    %13 = sdir.alloc_transient {name = "_tmp_32"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_25")
    %14 = sdir.alloc_transient {name = "_tmp_23"}() : !sdir.array<index>
    %15 = sdir.alloc_transient {name = "_tmp_20"}() : !sdir.array<index>
    %16 = sdir.alloc_transient {name = "_tmp_17"}() : !sdir.array<index>
    %17 = sdir.alloc_transient {name = "_tmp_14"}() : !sdir.array<index>
    %18 = sdir.alloc_transient {name = "_tmp_11"}() : !sdir.array<index>
    %19 = sdir.alloc_transient {name = "_tmp_8"}() : !sdir.array<index>
    %20 = sdir.alloc_transient {name = "_tmp_5"}() : !sdir.array<f64>
    sdir.state @init_3 {
    }
    sdir.state @state_4 {
      sdir.tasklet @task_6() -> f64 {
        %cst = arith.constant 0.000000e+00 : f64
        sdir.return %cst : f64
      }
      %21 = sdir.call @task_6() : () -> f64
      %22 = sdir.get_access %20 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_7 {
      sdir.tasklet @task_9(%arg6: i32) -> index {
        %24 = arith.index_cast %arg6 : i32 to index
        sdir.return %24 : index
      }
      %21 = sdir.call @task_9(%arg1) : (i32) -> index
      %22 = sdir.get_access %19 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_10 {
      sdir.tasklet @task_12(%arg6: i32) -> index {
        %24 = arith.index_cast %arg6 : i32 to index
        sdir.return %24 : index
      }
      %21 = sdir.call @task_12(%arg2) : (i32) -> index
      %22 = sdir.get_access %18 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_13 {
      sdir.tasklet @task_15(%arg6: i32) -> index {
        %24 = arith.index_cast %arg6 : i32 to index
        sdir.return %24 : index
      }
      %21 = sdir.call @task_15(%arg2) : (i32) -> index
      %22 = sdir.get_access %17 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_16 {
      sdir.tasklet @task_18(%arg6: i32) -> index {
        %24 = arith.index_cast %arg6 : i32 to index
        sdir.return %24 : index
      }
      %21 = sdir.call @task_18(%arg0) : (i32) -> index
      %22 = sdir.get_access %16 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_19 {
      sdir.tasklet @task_21() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %21 = sdir.call @task_21() : () -> index
      %22 = sdir.get_access %15 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_22 {
      sdir.tasklet @task_24() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %21 = sdir.call @task_24() : () -> index
      %22 = sdir.get_access %14 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_26 {
      %21 = sdir.sym("loopIdx_25") : index
    }
    sdir.state @guard_27 {
    }
    sdir.state @body_28 {
    }
    sdir.state @state_31 {
      sdir.tasklet @task_33() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %21 = sdir.call @task_33() : () -> index
      %22 = sdir.get_access %13 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_34 {
      sdir.tasklet @task_36() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %21 = sdir.call @task_36() : () -> index
      %22 = sdir.get_access %12 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_38 {
      %21 = sdir.sym("loopIdx_37") : index
    }
    sdir.state @guard_39 {
    }
    sdir.state @body_40 {
    }
    sdir.state @state_43 {
      sdir.tasklet @task_45() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %21 = sdir.call @task_45() : () -> index
      %22 = sdir.get_access %11 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_46 {
      sdir.tasklet @task_48() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %21 = sdir.call @task_48() : () -> index
      %22 = sdir.get_access %10 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_50 {
      %21 = sdir.sym("loopIdx_49") : index
    }
    sdir.state @guard_51 {
    }
    sdir.state @body_52 {
    }
    sdir.state @state_55 {
      %21 = sdir.get_access %20 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.sym("loopIdx_49") : index
      sdir.store %22, %arg5[%23] : f64 -> !sdir.memlet<sym("s_2")xf64>
    }
    sdir.state @state_56 {
      sdir.tasklet @task_58() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %21 = sdir.call @task_58() : () -> index
      %22 = sdir.get_access %9 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_59 {
      sdir.tasklet @task_61() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %21 = sdir.call @task_61() : () -> index
      %22 = sdir.get_access %8 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_63 {
      %21 = sdir.sym("loopIdx_62") : index
    }
    sdir.state @guard_64 {
    }
    sdir.state @body_65 {
    }
    sdir.state @state_69 {
      %21 = sdir.sym("loopIdx_25") : index
      %22 = sdir.sym("loopIdx_37") : index
      %23 = sdir.sym("loopIdx_62") : index
      %24 = sdir.load %arg3[%21, %22, %23] : !sdir.memlet<sym("s_0")x140x160xf64> -> f64
      %25 = sdir.get_access %7 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_71 {
      %21 = sdir.sym("loopIdx_62") : index
      %22 = sdir.sym("loopIdx_49") : index
      %23 = sdir.load %arg4[%21, %22] : !sdir.memlet<sym("s_1")x160xf64> -> f64
      %24 = sdir.get_access %6 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %23, %24[] : f64 -> !sdir.memlet<f64>
      %25 = sdir.load %24[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_72 {
      sdir.tasklet @task_74(%arg6: f64, %arg7: f64) -> f64 {
        %28 = arith.mulf %arg6, %arg7 : f64
        sdir.return %28 : f64
      }
      %21 = sdir.get_access %7 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.get_access %6 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.call @task_74(%22, %24) : (f64, f64) -> f64
      %26 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %25, %26[] : f64 -> !sdir.memlet<f64>
      %27 = sdir.load %26[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_76 {
      %21 = sdir.sym("loopIdx_49") : index
      %22 = sdir.load %arg5[%21] : !sdir.memlet<sym("s_2")xf64> -> f64
      %23 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_77 {
      sdir.tasklet @task_79(%arg6: f64, %arg7: f64) -> f64 {
        %28 = arith.addf %arg6, %arg7 : f64
        sdir.return %28 : f64
      }
      %21 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.call @task_79(%22, %24) : (f64, f64) -> f64
      %26 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %25, %26[] : f64 -> !sdir.memlet<f64>
      %27 = sdir.load %26[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_80 {
      %21 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.sym("loopIdx_49") : index
      sdir.store %22, %arg5[%23] : f64 -> !sdir.memlet<sym("s_2")xf64>
    }
    sdir.state @yield_81 {
    }
    sdir.state @loopReturn_66 {
    }
    sdir.state @exit_67 {
    }
    sdir.edge {assign = ["loopIdx_62: ref"]} (ref: %9: !sdir.array<index>) @init_63 -> @guard_64
    sdir.edge {condition = "loopIdx_62 < ref"} (ref: %18: !sdir.array<index>) @guard_64 -> @body_65
    sdir.edge {assign = ["loopIdx_62: loopIdx_62 + ref"]} (ref: %8: !sdir.array<index>) @loopReturn_66 -> @guard_64
    sdir.edge {condition = "not(loopIdx_62 < ref)"} (ref: %18: !sdir.array<index>) @guard_64 -> @exit_67
    sdir.state @yield_82 {
    }
    sdir.state @loopReturn_53 {
    }
    sdir.state @exit_54 {
    }
    sdir.edge {assign = ["loopIdx_49: ref"]} (ref: %11: !sdir.array<index>) @init_50 -> @guard_51
    sdir.edge {condition = "loopIdx_49 < ref"} (ref: %18: !sdir.array<index>) @guard_51 -> @body_52
    sdir.edge {assign = ["loopIdx_49: loopIdx_49 + ref"]} (ref: %10: !sdir.array<index>) @loopReturn_53 -> @guard_51
    sdir.edge {condition = "not(loopIdx_49 < ref)"} (ref: %18: !sdir.array<index>) @guard_51 -> @exit_54
    sdir.state @state_83 {
      sdir.tasklet @task_85() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %21 = sdir.call @task_85() : () -> index
      %22 = sdir.get_access %2 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_86 {
      sdir.tasklet @task_88() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %21 = sdir.call @task_88() : () -> index
      %22 = sdir.get_access %1 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_90 {
      %21 = sdir.sym("loopIdx_89") : index
    }
    sdir.state @guard_91 {
    }
    sdir.state @body_92 {
    }
    sdir.state @state_96 {
      %21 = sdir.sym("loopIdx_89") : index
      %22 = sdir.load %arg5[%21] : !sdir.memlet<sym("s_2")xf64> -> f64
      %23 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_97 {
      %21 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.sym("loopIdx_25") : index
      %24 = sdir.sym("loopIdx_37") : index
      %25 = sdir.sym("loopIdx_89") : index
      sdir.store %22, %arg3[%23, %24, %25] : f64 -> !sdir.memlet<sym("s_0")x140x160xf64>
    }
    sdir.state @yield_98 {
    }
    sdir.state @loopReturn_93 {
    }
    sdir.state @exit_94 {
    }
    sdir.edge {assign = ["loopIdx_89: ref"]} (ref: %2: !sdir.array<index>) @init_90 -> @guard_91
    sdir.edge {condition = "loopIdx_89 < ref"} (ref: %17: !sdir.array<index>) @guard_91 -> @body_92
    sdir.edge {assign = ["loopIdx_89: loopIdx_89 + ref"]} (ref: %1: !sdir.array<index>) @loopReturn_93 -> @guard_91
    sdir.edge {condition = "not(loopIdx_89 < ref)"} (ref: %17: !sdir.array<index>) @guard_91 -> @exit_94
    sdir.state @yield_99 {
    }
    sdir.state @loopReturn_41 {
    }
    sdir.state @exit_42 {
    }
    sdir.edge {assign = ["loopIdx_37: ref"]} (ref: %13: !sdir.array<index>) @init_38 -> @guard_39
    sdir.edge {condition = "loopIdx_37 < ref"} (ref: %19: !sdir.array<index>) @guard_39 -> @body_40
    sdir.edge {assign = ["loopIdx_37: loopIdx_37 + ref"]} (ref: %12: !sdir.array<index>) @loopReturn_41 -> @guard_39
    sdir.edge {condition = "not(loopIdx_37 < ref)"} (ref: %19: !sdir.array<index>) @guard_39 -> @exit_42
    sdir.state @yield_100 {
    }
    sdir.state @loopReturn_29 {
    }
    sdir.state @exit_30 {
    }
    sdir.edge {assign = ["loopIdx_25: ref"]} (ref: %15: !sdir.array<index>) @init_26 -> @guard_27
    sdir.edge {condition = "loopIdx_25 < ref"} (ref: %16: !sdir.array<index>) @guard_27 -> @body_28
    sdir.edge {assign = ["loopIdx_25: loopIdx_25 + ref"]} (ref: %14: !sdir.array<index>) @loopReturn_29 -> @guard_27
    sdir.edge {condition = "not(loopIdx_25 < ref)"} (ref: %16: !sdir.array<index>) @guard_27 -> @exit_30
    sdir.state @return_101 {
    }
    sdir.edge @init_3 -> @state_4
    sdir.edge @state_4 -> @state_7
    sdir.edge @state_7 -> @state_10
    sdir.edge @state_10 -> @state_13
    sdir.edge @state_13 -> @state_16
    sdir.edge @state_16 -> @state_19
    sdir.edge @state_19 -> @state_22
    sdir.edge @state_22 -> @init_26
    sdir.edge @body_28 -> @state_31
    sdir.edge @state_31 -> @state_34
    sdir.edge @state_34 -> @init_38
    sdir.edge @body_40 -> @state_43
    sdir.edge @state_43 -> @state_46
    sdir.edge @state_46 -> @init_50
    sdir.edge @body_52 -> @state_55
    sdir.edge @state_55 -> @state_56
    sdir.edge @state_56 -> @state_59
    sdir.edge @state_59 -> @init_63
    sdir.edge @body_65 -> @state_69
    sdir.edge @state_69 -> @state_71
    sdir.edge @state_71 -> @state_72
    sdir.edge @state_72 -> @state_76
    sdir.edge @state_76 -> @state_77
    sdir.edge @state_77 -> @state_80
    sdir.edge @state_80 -> @yield_81
    sdir.edge @yield_81 -> @loopReturn_66
    sdir.edge @exit_67 -> @yield_82
    sdir.edge @yield_82 -> @loopReturn_53
    sdir.edge @exit_54 -> @state_83
    sdir.edge @state_83 -> @state_86
    sdir.edge @state_86 -> @init_90
    sdir.edge @body_92 -> @state_96
    sdir.edge @state_96 -> @state_97
    sdir.edge @state_97 -> @yield_98
    sdir.edge @yield_98 -> @loopReturn_93
    sdir.edge @exit_94 -> @yield_99
    sdir.edge @yield_99 -> @loopReturn_41
    sdir.edge @exit_42 -> @yield_100
    sdir.edge @yield_100 -> @loopReturn_29
    sdir.edge @exit_30 -> @return_101
  }
}

