  func private @kernel_jacobi_1d(%arg0: i32, %arg1: i32, %arg2: memref<?xf64>, %arg3: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 3.333300e-01 : f64
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
        %c-1_5 = arith.constant -1 : index
        %5 = arith.addi %arg5, %c-1_5 : index
        %6 = memref.load %arg2[%5] : memref<?xf64>
        %7 = memref.load %arg2[%arg5] : memref<?xf64>
        %8 = arith.addf %6, %7 : f64
        %c1_6 = arith.constant 1 : index
        %9 = arith.addi %arg5, %c1_6 : index
        %10 = memref.load %arg2[%9] : memref<?xf64>
        %11 = arith.addf %8, %10 : f64
        %12 = arith.mulf %cst, %11 : f64
        memref.store %12, %arg3[%arg5] : memref<?xf64>
      }
      %c1_2 = arith.constant 1 : index
      %c-1_3 = arith.constant -1 : index
      %4 = arith.addi %1, %c-1_3 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg5 = %c1_2 to %4 step %c1_4 {
        %c-1_5 = arith.constant -1 : index
        %5 = arith.addi %arg5, %c-1_5 : index
        %6 = memref.load %arg3[%5] : memref<?xf64>
        %7 = memref.load %arg3[%arg5] : memref<?xf64>
        %8 = arith.addf %6, %7 : f64
        %c1_6 = arith.constant 1 : index
        %9 = arith.addi %arg5, %c1_6 : index
        %10 = memref.load %arg3[%9] : memref<?xf64>
        %11 = arith.addf %8, %10 : f64
        %12 = arith.mulf %cst, %11 : f64
        memref.store %12, %arg2[%arg5] : memref<?xf64>
      }
    }
    return
  }
