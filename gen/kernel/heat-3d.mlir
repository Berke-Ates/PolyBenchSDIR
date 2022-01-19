  func private @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<?x120x120xf64>, %arg3: memref<?x120x120xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 2.000000e+00 : f64
    %cst_0 = arith.constant 1.250000e-01 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %c1 = arith.constant 1 : index
    %c501 = arith.constant 501 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg4 = %c1 to %c501 step %c1_1 {
      %c1_2 = arith.constant 1 : index
      %c-1 = arith.constant -1 : index
      %2 = arith.addi %0, %c-1 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %2 step %c1_3 {
        %c1_7 = arith.constant 1 : index
        %c-1_8 = arith.constant -1 : index
        %4 = arith.addi %0, %c-1_8 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c1_7 to %4 step %c1_9 {
          %c1_10 = arith.constant 1 : index
          %c-1_11 = arith.constant -1 : index
          %5 = arith.addi %0, %c-1_11 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg7 = %c1_10 to %5 step %c1_12 {
            %c1_13 = arith.constant 1 : index
            %6 = arith.addi %arg5, %c1_13 : index
            %7 = memref.load %arg2[%6, %arg6, %arg7] : memref<?x120x120xf64>
            %8 = memref.load %arg2[%arg5, %arg6, %arg7] : memref<?x120x120xf64>
            %9 = arith.mulf %cst, %8 : f64
            %10 = arith.subf %7, %9 : f64
            %c-1_14 = arith.constant -1 : index
            %11 = arith.addi %arg5, %c-1_14 : index
            %12 = memref.load %arg2[%11, %arg6, %arg7] : memref<?x120x120xf64>
            %13 = arith.addf %10, %12 : f64
            %14 = arith.mulf %cst_0, %13 : f64
            %c1_15 = arith.constant 1 : index
            %15 = arith.addi %arg6, %c1_15 : index
            %16 = memref.load %arg2[%arg5, %15, %arg7] : memref<?x120x120xf64>
            %17 = arith.mulf %cst, %8 : f64
            %18 = arith.subf %16, %17 : f64
            %c-1_16 = arith.constant -1 : index
            %19 = arith.addi %arg6, %c-1_16 : index
            %20 = memref.load %arg2[%arg5, %19, %arg7] : memref<?x120x120xf64>
            %21 = arith.addf %18, %20 : f64
            %22 = arith.mulf %cst_0, %21 : f64
            %23 = arith.addf %14, %22 : f64
            %c1_17 = arith.constant 1 : index
            %24 = arith.addi %arg7, %c1_17 : index
            %25 = memref.load %arg2[%arg5, %arg6, %24] : memref<?x120x120xf64>
            %26 = arith.mulf %cst, %8 : f64
            %27 = arith.subf %25, %26 : f64
            %c-1_18 = arith.constant -1 : index
            %28 = arith.addi %arg7, %c-1_18 : index
            %29 = memref.load %arg2[%arg5, %arg6, %28] : memref<?x120x120xf64>
            %30 = arith.addf %27, %29 : f64
            %31 = arith.mulf %cst_0, %30 : f64
            %32 = arith.addf %23, %31 : f64
            %33 = arith.addf %32, %8 : f64
            memref.store %33, %arg3[%arg5, %arg6, %arg7] : memref<?x120x120xf64>
          }
        }
      }
      %c1_4 = arith.constant 1 : index
      %c-1_5 = arith.constant -1 : index
      %3 = arith.addi %1, %c-1_5 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg5 = %c1_4 to %3 step %c1_6 {
        %c1_7 = arith.constant 1 : index
        %c-1_8 = arith.constant -1 : index
        %4 = arith.addi %1, %c-1_8 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg6 = %c1_7 to %4 step %c1_9 {
          %c1_10 = arith.constant 1 : index
          %c-1_11 = arith.constant -1 : index
          %5 = arith.addi %1, %c-1_11 : index
          %c1_12 = arith.constant 1 : index
          scf.for %arg7 = %c1_10 to %5 step %c1_12 {
            %c1_13 = arith.constant 1 : index
            %6 = arith.addi %arg5, %c1_13 : index
            %7 = memref.load %arg3[%6, %arg6, %arg7] : memref<?x120x120xf64>
            %8 = memref.load %arg3[%arg5, %arg6, %arg7] : memref<?x120x120xf64>
            %9 = arith.mulf %cst, %8 : f64
            %10 = arith.subf %7, %9 : f64
            %c-1_14 = arith.constant -1 : index
            %11 = arith.addi %arg5, %c-1_14 : index
            %12 = memref.load %arg3[%11, %arg6, %arg7] : memref<?x120x120xf64>
            %13 = arith.addf %10, %12 : f64
            %14 = arith.mulf %cst_0, %13 : f64
            %c1_15 = arith.constant 1 : index
            %15 = arith.addi %arg6, %c1_15 : index
            %16 = memref.load %arg3[%arg5, %15, %arg7] : memref<?x120x120xf64>
            %17 = arith.mulf %cst, %8 : f64
            %18 = arith.subf %16, %17 : f64
            %c-1_16 = arith.constant -1 : index
            %19 = arith.addi %arg6, %c-1_16 : index
            %20 = memref.load %arg3[%arg5, %19, %arg7] : memref<?x120x120xf64>
            %21 = arith.addf %18, %20 : f64
            %22 = arith.mulf %cst_0, %21 : f64
            %23 = arith.addf %14, %22 : f64
            %c1_17 = arith.constant 1 : index
            %24 = arith.addi %arg7, %c1_17 : index
            %25 = memref.load %arg3[%arg5, %arg6, %24] : memref<?x120x120xf64>
            %26 = arith.mulf %cst, %8 : f64
            %27 = arith.subf %25, %26 : f64
            %c-1_18 = arith.constant -1 : index
            %28 = arith.addi %arg7, %c-1_18 : index
            %29 = memref.load %arg3[%arg5, %arg6, %28] : memref<?x120x120xf64>
            %30 = arith.addf %27, %29 : f64
            %31 = arith.mulf %cst_0, %30 : f64
            %32 = arith.addf %23, %31 : f64
            %33 = arith.addf %32, %8 : f64
            memref.store %33, %arg2[%arg5, %arg6, %arg7] : memref<?x120x120xf64>
          }
        }
      }
    }
    return
  }
