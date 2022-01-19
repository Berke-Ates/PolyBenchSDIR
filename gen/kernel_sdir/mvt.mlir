module  {
  sdir.sdfg {entry = @init_5} @kernel_mvt(%arg0: i32, %arg1: !sdir.memlet<sym("s_0")xf64>, %arg2: !sdir.memlet<sym("s_1")xf64>, %arg3: !sdir.memlet<sym("s_2")xf64>, %arg4: !sdir.memlet<sym("s_3")xf64>, %arg5: !sdir.memlet<sym("s_4")x2000xf64>) {
    %0 = sdir.alloc_transient {name = "_tmp_85"}() : !sdir.array<f64>
    %1 = sdir.alloc_transient {name = "_tmp_82"}() : !sdir.array<f64>
    %2 = sdir.alloc_transient {name = "_tmp_79"}() : !sdir.array<f64>
    %3 = sdir.alloc_transient {name = "_tmp_77"}() : !sdir.array<f64>
    %4 = sdir.alloc_transient {name = "_tmp_75"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_69")
    %5 = sdir.alloc_transient {name = "_tmp_67"}() : !sdir.array<index>
    %6 = sdir.alloc_transient {name = "_tmp_64"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_57")
    %7 = sdir.alloc_transient {name = "_tmp_55"}() : !sdir.array<index>
    %8 = sdir.alloc_transient {name = "_tmp_52"}() : !sdir.array<index>
    %9 = sdir.alloc_transient {name = "_tmp_49"}() : !sdir.array<index>
    %10 = sdir.alloc_transient {name = "_tmp_43"}() : !sdir.array<f64>
    %11 = sdir.alloc_transient {name = "_tmp_40"}() : !sdir.array<f64>
    %12 = sdir.alloc_transient {name = "_tmp_37"}() : !sdir.array<f64>
    %13 = sdir.alloc_transient {name = "_tmp_35"}() : !sdir.array<f64>
    %14 = sdir.alloc_transient {name = "_tmp_33"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_27")
    %15 = sdir.alloc_transient {name = "_tmp_25"}() : !sdir.array<index>
    %16 = sdir.alloc_transient {name = "_tmp_22"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_15")
    %17 = sdir.alloc_transient {name = "_tmp_13"}() : !sdir.array<index>
    %18 = sdir.alloc_transient {name = "_tmp_10"}() : !sdir.array<index>
    %19 = sdir.alloc_transient {name = "_tmp_7"}() : !sdir.array<index>
    sdir.state @init_5 {
    }
    sdir.state @state_6 {
      sdir.tasklet @task_8(%arg6: i32) -> index {
        %23 = arith.index_cast %arg6 : i32 to index
        sdir.return %23 : index
      }
      %20 = sdir.call @task_8(%arg0) : (i32) -> index
      %21 = sdir.get_access %19 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_9 {
      sdir.tasklet @task_11() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_11() : () -> index
      %21 = sdir.get_access %18 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_12 {
      sdir.tasklet @task_14() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_14() : () -> index
      %21 = sdir.get_access %17 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_16 {
      %20 = sdir.sym("loopIdx_15") : index
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
      %20 = sdir.call @task_23() : () -> index
      %21 = sdir.get_access %16 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_24 {
      sdir.tasklet @task_26() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_26() : () -> index
      %21 = sdir.get_access %15 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_28 {
      %20 = sdir.sym("loopIdx_27") : index
    }
    sdir.state @guard_29 {
    }
    sdir.state @body_30 {
    }
    sdir.state @state_34 {
      %20 = sdir.sym("loopIdx_15") : index
      %21 = sdir.load %arg1[%20] : !sdir.memlet<sym("s_0")xf64> -> f64
      %22 = sdir.get_access %14 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_36 {
      %20 = sdir.sym("loopIdx_15") : index
      %21 = sdir.sym("loopIdx_27") : index
      %22 = sdir.load %arg5[%20, %21] : !sdir.memlet<sym("s_4")x2000xf64> -> f64
      %23 = sdir.get_access %13 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_38 {
      %20 = sdir.sym("loopIdx_27") : index
      %21 = sdir.load %arg3[%20] : !sdir.memlet<sym("s_2")xf64> -> f64
      %22 = sdir.get_access %12 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_39 {
      sdir.tasklet @task_41(%arg6: f64, %arg7: f64) -> f64 {
        %27 = arith.mulf %arg6, %arg7 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %13 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %12 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_41(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %11 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_42 {
      sdir.tasklet @task_44(%arg6: f64, %arg7: f64) -> f64 {
        %27 = arith.addf %arg6, %arg7 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %14 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %11 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_44(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %10 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_45 {
      %20 = sdir.get_access %10 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.sym("loopIdx_15") : index
      sdir.store %21, %arg1[%22] : f64 -> !sdir.memlet<sym("s_0")xf64>
    }
    sdir.state @yield_46 {
    }
    sdir.state @loopReturn_31 {
    }
    sdir.state @exit_32 {
    }
    sdir.edge {assign = ["loopIdx_27: ref"]} (ref: %16: !sdir.array<index>) @init_28 -> @guard_29
    sdir.edge {condition = "loopIdx_27 < ref"} (ref: %19: !sdir.array<index>) @guard_29 -> @body_30
    sdir.edge {assign = ["loopIdx_27: loopIdx_27 + ref"]} (ref: %15: !sdir.array<index>) @loopReturn_31 -> @guard_29
    sdir.edge {condition = "not(loopIdx_27 < ref)"} (ref: %19: !sdir.array<index>) @guard_29 -> @exit_32
    sdir.state @yield_47 {
    }
    sdir.state @loopReturn_19 {
    }
    sdir.state @exit_20 {
    }
    sdir.edge {assign = ["loopIdx_15: ref"]} (ref: %18: !sdir.array<index>) @init_16 -> @guard_17
    sdir.edge {condition = "loopIdx_15 < ref"} (ref: %19: !sdir.array<index>) @guard_17 -> @body_18
    sdir.edge {assign = ["loopIdx_15: loopIdx_15 + ref"]} (ref: %17: !sdir.array<index>) @loopReturn_19 -> @guard_17
    sdir.edge {condition = "not(loopIdx_15 < ref)"} (ref: %19: !sdir.array<index>) @guard_17 -> @exit_20
    sdir.state @state_48 {
      sdir.tasklet @task_50(%arg6: i32) -> index {
        %23 = arith.index_cast %arg6 : i32 to index
        sdir.return %23 : index
      }
      %20 = sdir.call @task_50(%arg0) : (i32) -> index
      %21 = sdir.get_access %9 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_51 {
      sdir.tasklet @task_53() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_53() : () -> index
      %21 = sdir.get_access %8 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_54 {
      sdir.tasklet @task_56() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_56() : () -> index
      %21 = sdir.get_access %7 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_58 {
      %20 = sdir.sym("loopIdx_57") : index
    }
    sdir.state @guard_59 {
    }
    sdir.state @body_60 {
    }
    sdir.state @state_63 {
      sdir.tasklet @task_65() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %20 = sdir.call @task_65() : () -> index
      %21 = sdir.get_access %6 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_66 {
      sdir.tasklet @task_68() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %20 = sdir.call @task_68() : () -> index
      %21 = sdir.get_access %5 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %20, %21[] : index -> !sdir.memlet<index>
      %22 = sdir.load %21[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_70 {
      %20 = sdir.sym("loopIdx_69") : index
    }
    sdir.state @guard_71 {
    }
    sdir.state @body_72 {
    }
    sdir.state @state_76 {
      %20 = sdir.sym("loopIdx_57") : index
      %21 = sdir.load %arg2[%20] : !sdir.memlet<sym("s_1")xf64> -> f64
      %22 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_78 {
      %20 = sdir.sym("loopIdx_69") : index
      %21 = sdir.sym("loopIdx_57") : index
      %22 = sdir.load %arg5[%20, %21] : !sdir.memlet<sym("s_4")x2000xf64> -> f64
      %23 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_80 {
      %20 = sdir.sym("loopIdx_69") : index
      %21 = sdir.load %arg4[%20] : !sdir.memlet<sym("s_3")xf64> -> f64
      %22 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_81 {
      sdir.tasklet @task_83(%arg6: f64, %arg7: f64) -> f64 {
        %27 = arith.mulf %arg6, %arg7 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_83(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_84 {
      sdir.tasklet @task_86(%arg6: f64, %arg7: f64) -> f64 {
        %27 = arith.addf %arg6, %arg7 : f64
        sdir.return %27 : f64
      }
      %20 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
      %24 = sdir.call @task_86(%21, %23) : (f64, f64) -> f64
      %25 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %24, %25[] : f64 -> !sdir.memlet<f64>
      %26 = sdir.load %25[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_87 {
      %20 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      %21 = sdir.load %20[] : !sdir.memlet<f64> -> f64
      %22 = sdir.sym("loopIdx_57") : index
      sdir.store %21, %arg2[%22] : f64 -> !sdir.memlet<sym("s_1")xf64>
    }
    sdir.state @yield_88 {
    }
    sdir.state @loopReturn_73 {
    }
    sdir.state @exit_74 {
    }
    sdir.edge {assign = ["loopIdx_69: ref"]} (ref: %6: !sdir.array<index>) @init_70 -> @guard_71
    sdir.edge {condition = "loopIdx_69 < ref"} (ref: %9: !sdir.array<index>) @guard_71 -> @body_72
    sdir.edge {assign = ["loopIdx_69: loopIdx_69 + ref"]} (ref: %5: !sdir.array<index>) @loopReturn_73 -> @guard_71
    sdir.edge {condition = "not(loopIdx_69 < ref)"} (ref: %9: !sdir.array<index>) @guard_71 -> @exit_74
    sdir.state @yield_89 {
    }
    sdir.state @loopReturn_61 {
    }
    sdir.state @exit_62 {
    }
    sdir.edge {assign = ["loopIdx_57: ref"]} (ref: %8: !sdir.array<index>) @init_58 -> @guard_59
    sdir.edge {condition = "loopIdx_57 < ref"} (ref: %9: !sdir.array<index>) @guard_59 -> @body_60
    sdir.edge {assign = ["loopIdx_57: loopIdx_57 + ref"]} (ref: %7: !sdir.array<index>) @loopReturn_61 -> @guard_59
    sdir.edge {condition = "not(loopIdx_57 < ref)"} (ref: %9: !sdir.array<index>) @guard_59 -> @exit_62
    sdir.state @return_90 {
    }
    sdir.edge @init_5 -> @state_6
    sdir.edge @state_6 -> @state_9
    sdir.edge @state_9 -> @state_12
    sdir.edge @state_12 -> @init_16
    sdir.edge @body_18 -> @state_21
    sdir.edge @state_21 -> @state_24
    sdir.edge @state_24 -> @init_28
    sdir.edge @body_30 -> @state_34
    sdir.edge @state_34 -> @state_36
    sdir.edge @state_36 -> @state_38
    sdir.edge @state_38 -> @state_39
    sdir.edge @state_39 -> @state_42
    sdir.edge @state_42 -> @state_45
    sdir.edge @state_45 -> @yield_46
    sdir.edge @yield_46 -> @loopReturn_31
    sdir.edge @exit_32 -> @yield_47
    sdir.edge @yield_47 -> @loopReturn_19
    sdir.edge @exit_20 -> @state_48
    sdir.edge @state_48 -> @state_51
    sdir.edge @state_51 -> @state_54
    sdir.edge @state_54 -> @init_58
    sdir.edge @body_60 -> @state_63
    sdir.edge @state_63 -> @state_66
    sdir.edge @state_66 -> @init_70
    sdir.edge @body_72 -> @state_76
    sdir.edge @state_76 -> @state_78
    sdir.edge @state_78 -> @state_80
    sdir.edge @state_80 -> @state_81
    sdir.edge @state_81 -> @state_84
    sdir.edge @state_84 -> @state_87
    sdir.edge @state_87 -> @yield_88
    sdir.edge @yield_88 -> @loopReturn_73
    sdir.edge @exit_74 -> @yield_89
    sdir.edge @yield_89 -> @loopReturn_61
    sdir.edge @exit_62 -> @return_90
  }
}

