module  {
  sdir.sdfg {entry = @init_3} @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: !sdir.memlet<sym("s_0")x1100xf64>, %arg6: !sdir.memlet<sym("s_1")x1200xf64>, %arg7: !sdir.memlet<sym("s_2")x1100xf64>) {
    %0 = sdir.alloc_transient {name = "_tmp_84"}() : !sdir.array<f64>
    %1 = sdir.alloc_transient {name = "_tmp_81"}() : !sdir.array<f64>
    %2 = sdir.alloc_transient {name = "_tmp_79"}() : !sdir.array<f64>
    %3 = sdir.alloc_transient {name = "_tmp_76"}() : !sdir.array<f64>
    %4 = sdir.alloc_transient {name = "_tmp_74"}() : !sdir.array<f64>
    %5 = sdir.alloc_transient {name = "_tmp_71"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_65")
    %6 = sdir.alloc_transient {name = "_tmp_63"}() : !sdir.array<index>
    %7 = sdir.alloc_transient {name = "_tmp_60"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_53")
    %8 = sdir.alloc_transient {name = "_tmp_51"}() : !sdir.array<index>
    %9 = sdir.alloc_transient {name = "_tmp_48"}() : !sdir.array<index>
    %10 = sdir.alloc_transient {name = "_tmp_43"}() : !sdir.array<f64>
    %11 = sdir.alloc_transient {name = "_tmp_40"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_34")
    %12 = sdir.alloc_transient {name = "_tmp_32"}() : !sdir.array<index>
    %13 = sdir.alloc_transient {name = "_tmp_29"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_22")
    %14 = sdir.alloc_transient {name = "_tmp_20"}() : !sdir.array<index>
    %15 = sdir.alloc_transient {name = "_tmp_17"}() : !sdir.array<index>
    %16 = sdir.alloc_transient {name = "_tmp_14"}() : !sdir.array<index>
    %17 = sdir.alloc_transient {name = "_tmp_11"}() : !sdir.array<index>
    %18 = sdir.alloc_transient {name = "_tmp_8"}() : !sdir.array<index>
    %19 = sdir.alloc_transient {name = "_tmp_5"}() : !sdir.array<index>
    sdir.state @init_3 {
    }
    sdir.state @state_4 {
      sdir.tasklet @task_6(%arg8: i32) -> index {
        %23 = arith.index_cast %arg8 : i32 to index
        sdir.return %23 : index
      }
      %20 = sdir.call @task_6(%arg1) : (i32) -> index
      %21 = sdir.get_access %19 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_7 {
      sdir.tasklet @task_9(%arg8: i32) -> index {
        %23 = arith.index_cast %arg8 : i32 to index
        sdir.return %23 : index
      }
      %20 = sdir.call @task_9(%arg2) : (i32) -> index
      %21 = sdir.get_access %18 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_10 {
      sdir.tasklet @task_12(%arg8: i32) -> index {
        %23 = arith.index_cast %arg8 : i32 to index
        sdir.return %23 : index
      }
      %20 = sdir.call @task_12(%arg1) : (i32) -> index
      %21 = sdir.get_access %17 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_13 {
      sdir.tasklet @task_15(%arg8: i32) -> index {
        %23 = arith.index_cast %arg8 : i32 to index
        sdir.return %23 : index
      }
      %20 = sdir.call @task_15(%arg0) : (i32) -> index
      %21 = sdir.get_access %16 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_16 {
      sdir.tasklet @task_18() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_18() : () -> index
      %21 = sdir.get_access %15 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_19 {
      sdir.tasklet @task_21() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_21() : () -> index
      %21 = sdir.get_access %14 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_23 {
      %20 = sdir.sym("loopIdx_22") : index
    }
    sdir.state @guard_24 {
    }
    sdir.state @body_25 {
    }
    sdir.state @state_28 {
      sdir.tasklet @task_30() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_30() : () -> index
      %21 = sdir.get_access %13 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_31 {
      sdir.tasklet @task_33() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_33() : () -> index
      %21 = sdir.get_access %12 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_35 {
      %20 = sdir.sym("loopIdx_34") : index
    }
    sdir.state @guard_36 {
    }
    sdir.state @body_37 {
    }
    sdir.state @state_41 {
      %20 = sdir.sym("loopIdx_22") : index
      %21 = sdir.sym("loopIdx_34") : index
      %22 = sdir.load %arg5[%20, %21] : !sdir.memlet<sym("s_0")x1100xf64> -> f64
      %23 = sdir.get_access %11 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_42 {
      sdir.tasklet @task_44(%arg8: f64, %arg9: f64) -> f64 {
        %25 = arith.mulf %arg8, %arg9 : f64
        sdir.return %25 : f64
      }
      %20 = sdir.get_access %11 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.call @task_44(%21, %arg4) : (f64, f64) -> f64
      %23 = sdir.get_access %10 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_45 {
      %20 = sdir.get_access %10 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.sym("loopIdx_22") : index
      %23 = sdir.sym("loopIdx_34") : index
      sdir.store %21, %arg5[%22, %23] : f64 -> !sdir.memlet<sym("s_0")x1100xf64>
    }
    sdir.state @yield_46 {
    }
    sdir.state @loopReturn_38 {
    }
    sdir.state @exit_39 {
    }
    sdir.edge {assign = ["loopIdx_34: ref"]} (ref: %13: !sdir.array<index>) @init_35 -> @guard_36
    sdir.edge {condition = "loopIdx_34 < ref"} (ref: %19: !sdir.array<index>) @guard_36 -> @body_37
    sdir.edge {assign = ["loopIdx_34: loopIdx_34 + ref"]} (ref: %12: !sdir.array<index>) @loopReturn_38 -> @guard_36
    sdir.edge {condition = "not(loopIdx_34 < ref)"} (ref: %19: !sdir.array<index>) @guard_36 -> @exit_39
    sdir.state @state_47 {
      sdir.tasklet @task_49() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_49() : () -> index
      %21 = sdir.get_access %9 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_50 {
      sdir.tasklet @task_52() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_52() : () -> index
      %21 = sdir.get_access %8 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_54 {
      %20 = sdir.sym("loopIdx_53") : index
    }
    sdir.state @guard_55 {
    }
    sdir.state @body_56 {
    }
    sdir.state @state_59 {
      sdir.tasklet @task_61() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_61() : () -> index
      %21 = sdir.get_access %7 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_62 {
      sdir.tasklet @task_64() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_64() : () -> index
      %21 = sdir.get_access %6 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_66 {
      %20 = sdir.sym("loopIdx_65") : index
    }
    sdir.state @guard_67 {
    }
    sdir.state @body_68 {
    }
    sdir.state @state_72 {
      %20 = sdir.sym("loopIdx_22") : index
      %21 = sdir.sym("loopIdx_53") : index
      %22 = sdir.load %arg6[%20, %21] : !sdir.memlet<sym("s_1")x1200xf64> -> f64
      %23 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_73 {
      sdir.tasklet @task_75(%arg8: f64, %arg9: f64) -> f64 {
        %25 = arith.mulf %arg8, %arg9 : f64
        sdir.return %25 : f64
      }
      %20 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.call @task_75(%arg3, %21) : (f64, f64) -> f64
      %23 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_77 {
      %20 = sdir.sym("loopIdx_53") : index
      %21 = sdir.sym("loopIdx_65") : index
      %22 = sdir.load %arg7[%20, %21] : !sdir.memlet<sym("s_2")x1100xf64> -> f64
      %23 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_78 {
      sdir.tasklet @task_80(%arg8: f64, %arg9: f64) -> f64 {
        %27 = arith.mulf %arg8, %arg9 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_80(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_82 {
      %20 = sdir.sym("loopIdx_22") : index
      %21 = sdir.sym("loopIdx_65") : index
      %22 = sdir.load %arg5[%20, %21] : !sdir.memlet<sym("s_0")x1100xf64> -> f64
      %23 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_83 {
      sdir.tasklet @task_85(%arg8: f64, %arg9: f64) -> f64 {
        %27 = arith.addf %arg8, %arg9 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_85(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_86 {
      %20 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.sym("loopIdx_22") : index
      %23 = sdir.sym("loopIdx_65") : index
      sdir.store %21, %arg5[%22, %23] : f64 -> !sdir.memlet<sym("s_0")x1100xf64>
    }
    sdir.state @yield_87 {
    }
    sdir.state @loopReturn_69 {
    }
    sdir.state @exit_70 {
    }
    sdir.edge {assign = ["loopIdx_65: ref"]} (ref: %7: !sdir.array<index>) @init_66 -> @guard_67
    sdir.edge {condition = "loopIdx_65 < ref"} (ref: %17: !sdir.array<index>) @guard_67 -> @body_68
    sdir.edge {assign = ["loopIdx_65: loopIdx_65 + ref"]} (ref: %6: !sdir.array<index>) @loopReturn_69 -> @guard_67
    sdir.edge {condition = "not(loopIdx_65 < ref)"} (ref: %17: !sdir.array<index>) @guard_67 -> @exit_70
    sdir.state @yield_88 {
    }
    sdir.state @loopReturn_57 {
    }
    sdir.state @exit_58 {
    }
    sdir.edge {assign = ["loopIdx_53: ref"]} (ref: %9: !sdir.array<index>) @init_54 -> @guard_55
    sdir.edge {condition = "loopIdx_53 < ref"} (ref: %18: !sdir.array<index>) @guard_55 -> @body_56
    sdir.edge {assign = ["loopIdx_53: loopIdx_53 + ref"]} (ref: %8: !sdir.array<index>) @loopReturn_57 -> @guard_55
    sdir.edge {condition = "not(loopIdx_53 < ref)"} (ref: %18: !sdir.array<index>) @guard_55 -> @exit_58
    sdir.state @yield_89 {
    }
    sdir.state @loopReturn_26 {
    }
    sdir.state @exit_27 {
    }
    sdir.edge {assign = ["loopIdx_22: ref"]} (ref: %15: !sdir.array<index>) @init_23 -> @guard_24
    sdir.edge {condition = "loopIdx_22 < ref"} (ref: %16: !sdir.array<index>) @guard_24 -> @body_25
    sdir.edge {assign = ["loopIdx_22: loopIdx_22 + ref"]} (ref: %14: !sdir.array<index>) @loopReturn_26 -> @guard_24
    sdir.edge {condition = "not(loopIdx_22 < ref)"} (ref: %16: !sdir.array<index>) @guard_24 -> @exit_27
    sdir.state @return_90 {
    }
    sdir.edge @init_3 -> @state_4
    sdir.edge @state_4 -> @state_7
    sdir.edge @state_7 -> @state_10
    sdir.edge @state_10 -> @state_13
    sdir.edge @state_13 -> @state_16
    sdir.edge @state_16 -> @state_19
    sdir.edge @state_19 -> @init_23
    sdir.edge @body_25 -> @state_28
    sdir.edge @state_28 -> @state_31
    sdir.edge @state_31 -> @init_35
    sdir.edge @body_37 -> @state_41
    sdir.edge @state_41 -> @state_42
    sdir.edge @state_42 -> @state_45
    sdir.edge @state_45 -> @yield_46
    sdir.edge @yield_46 -> @loopReturn_38
    sdir.edge @exit_39 -> @state_47
    sdir.edge @state_47 -> @state_50
    sdir.edge @state_50 -> @init_54
    sdir.edge @body_56 -> @state_59
    sdir.edge @state_59 -> @state_62
    sdir.edge @state_62 -> @init_66
    sdir.edge @body_68 -> @state_72
    sdir.edge @state_72 -> @state_73
    sdir.edge @state_73 -> @state_77
    sdir.edge @state_77 -> @state_78
    sdir.edge @state_78 -> @state_82
    sdir.edge @state_82 -> @state_83
    sdir.edge @state_83 -> @state_86
    sdir.edge @state_86 -> @yield_87
    sdir.edge @yield_87 -> @loopReturn_69
    sdir.edge @exit_70 -> @yield_88
    sdir.edge @yield_88 -> @loopReturn_57
    sdir.edge @exit_58 -> @yield_89
    sdir.edge @yield_89 -> @loopReturn_26
    sdir.edge @exit_27 -> @return_90
  }
}

