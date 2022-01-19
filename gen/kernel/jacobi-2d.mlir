  func private @kernel_jacobi_2d(%arg0: i32, %arg1: i32, %arg2: memref<?x1300xf64>, %arg3: memref<?x1300xf64>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 2.000000e-01 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg4 = %c0 to %2 step %c1 {
      %c1_0 = arith.constant 1 : index
      %c-1 = arith.constant -1 : index
      %3 = arith.addi %0, %c-1 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg5 = %c1_0 to %3 step %c1_1 {
        %c1_5 = arith.constant 1 : index
        %c-1_6 = arith.constant -1 : index
        %5 = arith.addi %0, %c-1_6 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c1_5 to %5 step %c1_7 {
          %6 = memref.load %arg2[%arg5, %arg6] : memref<?x1300xf64>
          %c-1_8 = arith.constant -1 : index
          %7 = arith.addi %arg6, %c-1_8 : index
          %8 = memref.load %arg2[%arg5, %7] : memref<?x1300xf64>
          %9 = arith.addf %6, %8 : f64
          %c1_9 = arith.constant 1 : index
          %10 = arith.addi %arg6, %c1_9 : index
          %11 = memref.load %arg2[%arg5, %10] : memref<?x1300xf64>
          %12 = arith.addf %9, %11 : f64
          %c1_10 = arith.constant 1 : index
          %13 = arith.addi %arg5, %c1_10 : index
          %14 = memref.load %arg2[%13, %arg6] : memref<?x1300xf64>
          %15 = arith.addf %12, %14 : f64
          %c-1_11 = arith.constant -1 : index
          %16 = arith.addi %arg5, %c-1_11 : index
          %17 = memref.load %arg2[%16, %arg6] : memref<?x1300xf64>
          %18 = arith.addf %15, %17 : f64
          %19 = arith.mulf %cst, %18 : f64
          memref.store %19, %arg3[%arg5, %arg6] : memref<?x1300xf64>
        }
      }
      %c1_2 = arith.constant 1 : index
      %c-1_3 = arith.constant -1 : index
      %4 = arith.addi %1, %c-1_3 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %4 step %c1_4 {
        %c1_5 = arith.constant 1 : index
        %c-1_6 = arith.constant -1 : index
        %5 = arith.addi %1, %c-1_6 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg6 = %c1_5 to %5 step %c1_7 {
          %6 = memref.load %arg3[%arg5, %arg6] : memref<?x1300xf64>
          %c-1_8 = arith.constant -1 : index
          %7 = arith.addi %arg6, %c-1_8 : index
          %8 = memref.load %arg3[%arg5, %7] : memref<?x1300xf64>
          %9 = arith.addf %6, %8 : f64
          %c1_9 = arith.constant 1 : index
          %10 = arith.addi %arg6, %c1_9 : index
          %11 = memref.load %arg3[%arg5, %10] : memref<?x1300xf64>
          %12 = arith.addf %9, %11 : f64
          %c1_10 = arith.constant 1 : index
          %13 = arith.addi %arg5, %c1_10 : index
          %14 = memref.load %arg3[%13, %arg6] : memref<?x1300xf64>
          %15 = arith.addf %12, %14 : f64
          %c-1_11 = arith.constant -1 : index
          %16 = arith.addi %arg5, %c-1_11 : index
          %17 = memref.load %arg3[%16, %arg6] : memref<?x1300xf64>
          %18 = arith.addf %15, %17 : f64
          %19 = arith.mulf %cst, %18 : f64
          memref.store %19, %arg2[%arg5, %arg6] : memref<?x1300xf64>
        }
      }
    }
    return
  }
