  func private @kernel_adi(%arg0: i32, %arg1: i32, %arg2: memref<?x1000xf64>, %arg3: memref<?x1000xf64>, %arg4: memref<?x1000xf64>, %arg5: memref<?x1000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 2.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %arg1 : i32 to index
    %4 = arith.sitofp %arg1 : i32 to f64
    %5 = arith.divf %cst_1, %4 : f64
    %6 = arith.sitofp %arg1 : i32 to f64
    %7 = arith.divf %cst_1, %6 : f64
    %8 = arith.sitofp %arg0 : i32 to f64
    %9 = arith.divf %cst_1, %8 : f64
    %10 = arith.mulf %cst_0, %9 : f64
    %11 = arith.mulf %5, %5 : f64
    %12 = arith.divf %10, %11 : f64
    %13 = arith.mulf %cst_1, %9 : f64
    %14 = arith.mulf %7, %7 : f64
    %15 = arith.divf %13, %14 : f64
    %16 = arith.negf %12 : f64
    %17 = arith.divf %16, %cst_0 : f64
    %18 = arith.addf %cst_1, %12 : f64
    %19 = arith.negf %15 : f64
    %20 = arith.divf %19, %cst_0 : f64
    %21 = arith.addf %cst_1, %15 : f64
    %22 = arith.index_cast %arg0 : i32 to index
    %23 = arith.negf %17 : f64
    %24 = arith.negf %20 : f64
    %25 = arith.mulf %cst_0, %20 : f64
    %26 = arith.addf %cst_1, %25 : f64
    %27 = arith.negf %20 : f64
    %28 = arith.negf %17 : f64
    %29 = arith.mulf %cst_0, %17 : f64
    %30 = arith.addf %cst_1, %29 : f64
    %c1 = arith.constant 1 : index
    %c1_2 = arith.constant 1 : index
    %31 = arith.addi %22, %c1_2 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg6 = %c1 to %31 step %c1_3 {
      %c1_4 = arith.constant 1 : index
      %c-1 = arith.constant -1 : index
      %32 = arith.addi %0, %c-1 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %c1_4 to %32 step %c1_5 {
        %c0 = arith.constant 0 : index
        memref.store %cst_1, %arg3[%c0, %arg7] : memref<?x1000xf64>
        %c0_9 = arith.constant 0 : index
        memref.store %cst, %arg4[%arg7, %c0_9] : memref<?x1000xf64>
        %c0_10 = arith.constant 0 : index
        %34 = memref.load %arg3[%c0_10, %arg7] : memref<?x1000xf64>
        %c0_11 = arith.constant 0 : index
        memref.store %34, %arg5[%arg7, %c0_11] : memref<?x1000xf64>
        %c1_12 = arith.constant 1 : index
        %c-1_13 = arith.constant -1 : index
        %35 = arith.addi %0, %c-1_13 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg8 = %c1_12 to %35 step %c1_14 {
          %c-1_19 = arith.constant -1 : index
          %38 = arith.addi %arg8, %c-1_19 : index
          %39 = memref.load %arg4[%arg7, %38] : memref<?x1000xf64>
          %40 = arith.mulf %17, %39 : f64
          %41 = arith.addf %40, %18 : f64
          %42 = arith.divf %23, %41 : f64
          memref.store %42, %arg4[%arg7, %arg8] : memref<?x1000xf64>
          %c-1_20 = arith.constant -1 : index
          %43 = arith.addi %arg7, %c-1_20 : index
          %44 = memref.load %arg2[%arg8, %43] : memref<?x1000xf64>
          %45 = arith.mulf %24, %44 : f64
          %46 = memref.load %arg2[%arg8, %arg7] : memref<?x1000xf64>
          %47 = arith.mulf %26, %46 : f64
          %48 = arith.addf %45, %47 : f64
          %c1_21 = arith.constant 1 : index
          %49 = arith.addi %arg7, %c1_21 : index
          %50 = memref.load %arg2[%arg8, %49] : memref<?x1000xf64>
          %51 = arith.mulf %20, %50 : f64
          %52 = arith.subf %48, %51 : f64
          %c-1_22 = arith.constant -1 : index
          %53 = arith.addi %arg8, %c-1_22 : index
          %54 = memref.load %arg5[%arg7, %53] : memref<?x1000xf64>
          %55 = arith.mulf %17, %54 : f64
          %56 = arith.subf %52, %55 : f64
          %57 = arith.mulf %17, %39 : f64
          %58 = arith.addf %57, %18 : f64
          %59 = arith.divf %56, %58 : f64
          memref.store %59, %arg5[%arg7, %arg8] : memref<?x1000xf64>
        }
        %c-1_15 = arith.constant -1 : index
        %36 = arith.addi %0, %c-1_15 : index
        memref.store %cst_1, %arg3[%36, %arg7] : memref<?x1000xf64>
        %c1_16 = arith.constant 1 : index
        %c-1_17 = arith.constant -1 : index
        %37 = arith.addi %1, %c-1_17 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg8 = %c1_16 to %37 step %c1_18 {
          %c-1_19 = arith.constant -1 : index
          %38 = arith.muli %arg8, %c-1_19 : index
          %39 = arith.addi %38, %1 : index
          %c-1_20 = arith.constant -1 : index
          %40 = arith.addi %39, %c-1_20 : index
          %41 = memref.load %arg4[%arg7, %40] : memref<?x1000xf64>
          %c-1_21 = arith.constant -1 : index
          %42 = arith.muli %arg8, %c-1_21 : index
          %43 = arith.addi %42, %1 : index
          %44 = memref.load %arg3[%43, %arg7] : memref<?x1000xf64>
          %45 = arith.mulf %41, %44 : f64
          %c-1_22 = arith.constant -1 : index
          %46 = arith.muli %arg8, %c-1_22 : index
          %47 = arith.addi %46, %1 : index
          %c-1_23 = arith.constant -1 : index
          %48 = arith.addi %47, %c-1_23 : index
          %49 = memref.load %arg5[%arg7, %48] : memref<?x1000xf64>
          %50 = arith.addf %45, %49 : f64
          %c-1_24 = arith.constant -1 : index
          %51 = arith.muli %arg8, %c-1_24 : index
          %52 = arith.addi %51, %1 : index
          %c-1_25 = arith.constant -1 : index
          %53 = arith.addi %52, %c-1_25 : index
          memref.store %50, %arg3[%53, %arg7] : memref<?x1000xf64>
        }
      }
      %c1_6 = arith.constant 1 : index
      %c-1_7 = arith.constant -1 : index
      %33 = arith.addi %2, %c-1_7 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg7 = %c1_6 to %33 step %c1_8 {
        %c0 = arith.constant 0 : index
        memref.store %cst_1, %arg2[%arg7, %c0] : memref<?x1000xf64>
        %c0_9 = arith.constant 0 : index
        memref.store %cst, %arg4[%arg7, %c0_9] : memref<?x1000xf64>
        %c0_10 = arith.constant 0 : index
        %34 = memref.load %arg2[%arg7, %c0_10] : memref<?x1000xf64>
        %c0_11 = arith.constant 0 : index
        memref.store %34, %arg5[%arg7, %c0_11] : memref<?x1000xf64>
        %c1_12 = arith.constant 1 : index
        %c-1_13 = arith.constant -1 : index
        %35 = arith.addi %2, %c-1_13 : index
        %c1_14 = arith.constant 1 : index
        scf.for %arg8 = %c1_12 to %35 step %c1_14 {
          %c-1_19 = arith.constant -1 : index
          %38 = arith.addi %arg8, %c-1_19 : index
          %39 = memref.load %arg4[%arg7, %38] : memref<?x1000xf64>
          %40 = arith.mulf %20, %39 : f64
          %41 = arith.addf %40, %21 : f64
          %42 = arith.divf %27, %41 : f64
          memref.store %42, %arg4[%arg7, %arg8] : memref<?x1000xf64>
          %c-1_20 = arith.constant -1 : index
          %43 = arith.addi %arg7, %c-1_20 : index
          %44 = memref.load %arg3[%43, %arg8] : memref<?x1000xf64>
          %45 = arith.mulf %28, %44 : f64
          %46 = memref.load %arg3[%arg7, %arg8] : memref<?x1000xf64>
          %47 = arith.mulf %30, %46 : f64
          %48 = arith.addf %45, %47 : f64
          %c1_21 = arith.constant 1 : index
          %49 = arith.addi %arg7, %c1_21 : index
          %50 = memref.load %arg3[%49, %arg8] : memref<?x1000xf64>
          %51 = arith.mulf %17, %50 : f64
          %52 = arith.subf %48, %51 : f64
          %c-1_22 = arith.constant -1 : index
          %53 = arith.addi %arg8, %c-1_22 : index
          %54 = memref.load %arg5[%arg7, %53] : memref<?x1000xf64>
          %55 = arith.mulf %20, %54 : f64
          %56 = arith.subf %52, %55 : f64
          %57 = arith.mulf %20, %39 : f64
          %58 = arith.addf %57, %21 : f64
          %59 = arith.divf %56, %58 : f64
          memref.store %59, %arg5[%arg7, %arg8] : memref<?x1000xf64>
        }
        %c-1_15 = arith.constant -1 : index
        %36 = arith.addi %2, %c-1_15 : index
        memref.store %cst_1, %arg2[%arg7, %36] : memref<?x1000xf64>
        %c1_16 = arith.constant 1 : index
        %c-1_17 = arith.constant -1 : index
        %37 = arith.addi %3, %c-1_17 : index
        %c1_18 = arith.constant 1 : index
        scf.for %arg8 = %c1_16 to %37 step %c1_18 {
          %c-1_19 = arith.constant -1 : index
          %38 = arith.muli %arg8, %c-1_19 : index
          %39 = arith.addi %38, %3 : index
          %c-1_20 = arith.constant -1 : index
          %40 = arith.addi %39, %c-1_20 : index
          %41 = memref.load %arg4[%arg7, %40] : memref<?x1000xf64>
          %c-1_21 = arith.constant -1 : index
          %42 = arith.muli %arg8, %c-1_21 : index
          %43 = arith.addi %42, %3 : index
          %44 = memref.load %arg2[%arg7, %43] : memref<?x1000xf64>
          %45 = arith.mulf %41, %44 : f64
          %c-1_22 = arith.constant -1 : index
          %46 = arith.muli %arg8, %c-1_22 : index
          %47 = arith.addi %46, %3 : index
          %c-1_23 = arith.constant -1 : index
          %48 = arith.addi %47, %c-1_23 : index
          %49 = memref.load %arg5[%arg7, %48] : memref<?x1000xf64>
          %50 = arith.addf %45, %49 : f64
          %c-1_24 = arith.constant -1 : index
          %51 = arith.muli %arg8, %c-1_24 : index
          %52 = arith.addi %51, %3 : index
          %c-1_25 = arith.constant -1 : index
          %53 = arith.addi %52, %c-1_25 : index
          memref.store %50, %arg2[%arg7, %53] : memref<?x1000xf64>
        }
      }
    }
    return
  }
