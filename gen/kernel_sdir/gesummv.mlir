module  {
  sdir.sdfg {entry = @init_5} @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: !sdir.memlet<sym("s_0")x1300xf64>, %arg4: !sdir.memlet<sym("s_1")x1300xf64>, %arg5: !sdir.memlet<sym("s_2")xf64>, %arg6: !sdir.memlet<sym("s_3")xf64>, %arg7: !sdir.memlet<sym("s_4")xf64>) {
    %0 = sdir.alloc_transient {name = "_tmp_76"}() : !sdir.array<f64>
    %1 = sdir.alloc_transient {name = "_tmp_73"}() : !sdir.array<f64>
    %2 = sdir.alloc_transient {name = "_tmp_70"}() : !sdir.array<f64>
    %3 = sdir.alloc_transient {name = "_tmp_68"}() : !sdir.array<f64>
    %4 = sdir.alloc_transient {name = "_tmp_65"}() : !sdir.array<f64>
    %5 = sdir.alloc_transient {name = "_tmp_61"}() : !sdir.array<f64>
    %6 = sdir.alloc_transient {name = "_tmp_58"}() : !sdir.array<f64>
    %7 = sdir.alloc_transient {name = "_tmp_56"}() : !sdir.array<f64>
    %8 = sdir.alloc_transient {name = "_tmp_53"}() : !sdir.array<f64>
    %9 = sdir.alloc_transient {name = "_tmp_51"}() : !sdir.array<f64>
    %10 = sdir.alloc_transient {name = "_tmp_48"}() : !sdir.array<f64>
    %11 = sdir.alloc_transient {name = "_tmp_45"}() : !sdir.array<f64>
    %12 = sdir.alloc_transient {name = "_tmp_43"}() : !sdir.array<f64>
    %13 = sdir.alloc_transient {name = "_tmp_40"}() : !sdir.array<f64>
    %14 = sdir.alloc_transient {name = "_tmp_38"}() : !sdir.array<f64>
    sdir.alloc_symbol("loopIdx_32")
    %15 = sdir.alloc_transient {name = "_tmp_30"}() : !sdir.array<index>
    %16 = sdir.alloc_transient {name = "_tmp_27"}() : !sdir.array<index>
    sdir.alloc_symbol("loopIdx_18")
    %17 = sdir.alloc_transient {name = "_tmp_16"}() : !sdir.array<index>
    %18 = sdir.alloc_transient {name = "_tmp_13"}() : !sdir.array<index>
    %19 = sdir.alloc_transient {name = "_tmp_10"}() : !sdir.array<index>
    %20 = sdir.alloc_transient {name = "_tmp_7"}() : !sdir.array<f64>
    sdir.state @init_5 {
    }
    sdir.state @state_6 {
      sdir.tasklet @task_8() -> f64 {
        %cst = arith.constant 0.000000e+00 : f64
        sdir.return %cst : f64
      }
      %21 = sdir.call @task_8() : () -> f64
      %22 = sdir.get_access %20 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %21, %22[] : f64 -> !sdir.memlet<f64>
      %23 = sdir.load %22[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_9 {
      sdir.tasklet @task_11(%arg8: i32) -> index {
        %24 = arith.index_cast %arg8 : i32 to index
        sdir.return %24 : index
      }
      %21 = sdir.call @task_11(%arg0) : (i32) -> index
      %22 = sdir.get_access %19 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_12 {
      sdir.tasklet @task_14() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %21 = sdir.call @task_14() : () -> index
      %22 = sdir.get_access %18 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_15 {
      sdir.tasklet @task_17() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %21 = sdir.call @task_17() : () -> index
      %22 = sdir.get_access %17 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_19 {
      %21 = sdir.sym("loopIdx_18") : index
    }
    sdir.state @guard_20 {
    }
    sdir.state @body_21 {
    }
    sdir.state @state_24 {
      %21 = sdir.get_access %20 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.sym("loopIdx_18") : index
      sdir.store %22, %arg5[%23] : f64 -> !sdir.memlet<sym("s_2")xf64>
    }
    sdir.state @state_25 {
      %21 = sdir.get_access %20 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.sym("loopIdx_18") : index
      sdir.store %22, %arg7[%23] : f64 -> !sdir.memlet<sym("s_4")xf64>
    }
    sdir.state @state_26 {
      sdir.tasklet @task_28() -> index {
        %c0 = arith.constant 0 : index
        sdir.return %c0 : index
      }
      %21 = sdir.call @task_28() : () -> index
      %22 = sdir.get_access %16 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @state_29 {
      sdir.tasklet @task_31() -> index {
        %c1 = arith.constant 1 : index
        sdir.return %c1 : index
      }
      %21 = sdir.call @task_31() : () -> index
      %22 = sdir.get_access %15 : !sdir.array<index> -> !sdir.memlet<index>
      sdir.store %21, %22[] : index -> !sdir.memlet<index>
      %23 = sdir.load %22[] : !sdir.memlet<index> -> index
    }
    sdir.state @init_33 {
      %21 = sdir.sym("loopIdx_32") : index
    }
    sdir.state @guard_34 {
    }
    sdir.state @body_35 {
    }
    sdir.state @state_39 {
      %21 = sdir.sym("loopIdx_18") : index
      %22 = sdir.sym("loopIdx_32") : index
      %23 = sdir.load %arg3[%21, %22] : !sdir.memlet<sym("s_0")x1300xf64> -> f64
      %24 = sdir.get_access %14 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %23, %24[] : f64 -> !sdir.memlet<f64>
      %25 = sdir.load %24[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_41 {
      %21 = sdir.sym("loopIdx_32") : index
      %22 = sdir.load %arg6[%21] : !sdir.memlet<sym("s_3")xf64> -> f64
      %23 = sdir.get_access %13 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_42 {
      sdir.tasklet @task_44(%arg8: f64, %arg9: f64) -> f64 {
        %28 = arith.mulf %arg8, %arg9 : f64
        sdir.return %28 : f64
      }
      %21 = sdir.get_access %14 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.get_access %13 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.call @task_44(%22, %24) : (f64, f64) -> f64
      %26 = sdir.get_access %12 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %25, %26[] : f64 -> !sdir.memlet<f64>
      %27 = sdir.load %26[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_46 {
      %21 = sdir.sym("loopIdx_18") : index
      %22 = sdir.load %arg5[%21] : !sdir.memlet<sym("s_2")xf64> -> f64
      %23 = sdir.get_access %11 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_47 {
      sdir.tasklet @task_49(%arg8: f64, %arg9: f64) -> f64 {
        %28 = arith.addf %arg8, %arg9 : f64
        sdir.return %28 : f64
      }
      %21 = sdir.get_access %12 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.get_access %11 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.call @task_49(%22, %24) : (f64, f64) -> f64
      %26 = sdir.get_access %10 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %25, %26[] : f64 -> !sdir.memlet<f64>
      %27 = sdir.load %26[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_50 {
      %21 = sdir.get_access %10 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.sym("loopIdx_18") : index
      sdir.store %22, %arg5[%23] : f64 -> !sdir.memlet<sym("s_2")xf64>
    }
    sdir.state @state_52 {
      %21 = sdir.sym("loopIdx_18") : index
      %22 = sdir.sym("loopIdx_32") : index
      %23 = sdir.load %arg4[%21, %22] : !sdir.memlet<sym("s_1")x1300xf64> -> f64
      %24 = sdir.get_access %9 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %23, %24[] : f64 -> !sdir.memlet<f64>
      %25 = sdir.load %24[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_54 {
      %21 = sdir.sym("loopIdx_32") : index
      %22 = sdir.load %arg6[%21] : !sdir.memlet<sym("s_3")xf64> -> f64
      %23 = sdir.get_access %8 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_55 {
      sdir.tasklet @task_57(%arg8: f64, %arg9: f64) -> f64 {
        %28 = arith.mulf %arg8, %arg9 : f64
        sdir.return %28 : f64
      }
      %21 = sdir.get_access %9 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.get_access %8 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.call @task_57(%22, %24) : (f64, f64) -> f64
      %26 = sdir.get_access %7 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %25, %26[] : f64 -> !sdir.memlet<f64>
      %27 = sdir.load %26[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_59 {
      %21 = sdir.sym("loopIdx_18") : index
      %22 = sdir.load %arg7[%21] : !sdir.memlet<sym("s_4")xf64> -> f64
      %23 = sdir.get_access %6 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_60 {
      sdir.tasklet @task_62(%arg8: f64, %arg9: f64) -> f64 {
        %28 = arith.addf %arg8, %arg9 : f64
        sdir.return %28 : f64
      }
      %21 = sdir.get_access %7 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.get_access %6 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.call @task_62(%22, %24) : (f64, f64) -> f64
      %26 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %25, %26[] : f64 -> !sdir.memlet<f64>
      %27 = sdir.load %26[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_63 {
      %21 = sdir.get_access %5 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.sym("loopIdx_18") : index
      sdir.store %22, %arg7[%23] : f64 -> !sdir.memlet<sym("s_4")xf64>
    }
    sdir.state @yield_64 {
    }
    sdir.state @loopReturn_36 {
    }
    sdir.state @exit_37 {
    }
    sdir.edge {assign = ["loopIdx_32: ref"]} (ref: %16: !sdir.array<index>) @init_33 -> @guard_34
    sdir.edge {condition = "loopIdx_32 < ref"} (ref: %19: !sdir.array<index>) @guard_34 -> @body_35
    sdir.edge {assign = ["loopIdx_32: loopIdx_32 + ref"]} (ref: %15: !sdir.array<index>) @loopReturn_36 -> @guard_34
    sdir.edge {condition = "not(loopIdx_32 < ref)"} (ref: %19: !sdir.array<index>) @guard_34 -> @exit_37
    sdir.state @state_66 {
      %21 = sdir.sym("loopIdx_18") : index
      %22 = sdir.load %arg5[%21] : !sdir.memlet<sym("s_2")xf64> -> f64
      %23 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_67 {
      sdir.tasklet @task_69(%arg8: f64, %arg9: f64) -> f64 {
        %26 = arith.mulf %arg8, %arg9 : f64
        sdir.return %26 : f64
      }
      %21 = sdir.get_access %4 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.call @task_69(%arg1, %22) : (f64, f64) -> f64
      %24 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %23, %24[] : f64 -> !sdir.memlet<f64>
      %25 = sdir.load %24[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_71 {
      %21 = sdir.sym("loopIdx_18") : index
      %22 = sdir.load %arg7[%21] : !sdir.memlet<sym("s_4")xf64> -> f64
      %23 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %22, %23[] : f64 -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_72 {
      sdir.tasklet @task_74(%arg8: f64, %arg9: f64) -> f64 {
        %26 = arith.mulf %arg8, %arg9 : f64
        sdir.return %26 : f64
      }
      %21 = sdir.get_access %2 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.call @task_74(%arg2, %22) : (f64, f64) -> f64
      %24 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %23, %24[] : f64 -> !sdir.memlet<f64>
      %25 = sdir.load %24[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_75 {
      sdir.tasklet @task_77(%arg8: f64, %arg9: f64) -> f64 {
        %28 = arith.addf %arg8, %arg9 : f64
        sdir.return %28 : f64
      }
      %21 = sdir.get_access %3 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.get_access %1 : !sdir.array<f64> -> !sdir.memlet<f64>
      %24 = sdir.load %23[] : !sdir.memlet<f64> -> f64
      %25 = sdir.call @task_77(%22, %24) : (f64, f64) -> f64
      %26 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      sdir.store %25, %26[] : f64 -> !sdir.memlet<f64>
      %27 = sdir.load %26[] : !sdir.memlet<f64> -> f64
    }
    sdir.state @state_78 {
      %21 = sdir.get_access %0 : !sdir.array<f64> -> !sdir.memlet<f64>
      %22 = sdir.load %21[] : !sdir.memlet<f64> -> f64
      %23 = sdir.sym("loopIdx_18") : index
      sdir.store %22, %arg7[%23] : f64 -> !sdir.memlet<sym("s_4")xf64>
    }
    sdir.state @yield_79 {
    }
    sdir.state @loopReturn_22 {
    }
    sdir.state @exit_23 {
    }
    sdir.edge {assign = ["loopIdx_18: ref"]} (ref: %18: !sdir.array<index>) @init_19 -> @guard_20
    sdir.edge {condition = "loopIdx_18 < ref"} (ref: %19: !sdir.array<index>) @guard_20 -> @body_21
    sdir.edge {assign = ["loopIdx_18: loopIdx_18 + ref"]} (ref: %17: !sdir.array<index>) @loopReturn_22 -> @guard_20
    sdir.edge {condition = "not(loopIdx_18 < ref)"} (ref: %19: !sdir.array<index>) @guard_20 -> @exit_23
    sdir.state @return_80 {
    }
    sdir.edge @init_5 -> @state_6
    sdir.edge @state_6 -> @state_9
    sdir.edge @state_9 -> @state_12
    sdir.edge @state_12 -> @state_15
    sdir.edge @state_15 -> @init_19
    sdir.edge @body_21 -> @state_24
    sdir.edge @state_24 -> @state_25
    sdir.edge @state_25 -> @state_26
    sdir.edge @state_26 -> @state_29
    sdir.edge @state_29 -> @init_33
    sdir.edge @body_35 -> @state_39
    sdir.edge @state_39 -> @state_41
    sdir.edge @state_41 -> @state_42
    sdir.edge @state_42 -> @state_46
    sdir.edge @state_46 -> @state_47
    sdir.edge @state_47 -> @state_50
    sdir.edge @state_50 -> @state_52
    sdir.edge @state_52 -> @state_54
    sdir.edge @state_54 -> @state_55
    sdir.edge @state_55 -> @state_59
    sdir.edge @state_59 -> @state_60
    sdir.edge @state_60 -> @state_63
    sdir.edge @state_63 -> @yield_64
    sdir.edge @yield_64 -> @loopReturn_36
    sdir.edge @exit_37 -> @state_66
    sdir.edge @state_66 -> @state_67
    sdir.edge @state_67 -> @state_71
    sdir.edge @state_71 -> @state_72
    sdir.edge @state_72 -> @state_75
    sdir.edge @state_75 -> @state_78
    sdir.edge @state_78 -> @yield_79
    sdir.edge @yield_79 -> @loopReturn_22
    sdir.edge @exit_23 -> @return_80
  }
}

