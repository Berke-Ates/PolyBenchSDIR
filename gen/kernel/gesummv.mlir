  func private @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<?x1300xf64>, %arg4: memref<?x1300xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>, %arg7: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %0 step %c1 {
      memref.store %cst, %arg5[%arg8] : memref<?xf64>
      memref.store %cst, %arg7[%arg8] : memref<?xf64>
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg9 = %c0_0 to %0 step %c1_1 {
        %6 = memref.load %arg3[%arg8, %arg9] : memref<?x1300xf64>
        %7 = memref.load %arg6[%arg9] : memref<?xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = memref.load %arg5[%arg8] : memref<?xf64>
        %10 = arith.addf %8, %9 : f64
        memref.store %10, %arg5[%arg8] : memref<?xf64>
        %11 = memref.load %arg4[%arg8, %arg9] : memref<?x1300xf64>
        %12 = memref.load %arg6[%arg9] : memref<?xf64>
        %13 = arith.mulf %11, %12 : f64
        %14 = memref.load %arg7[%arg8] : memref<?xf64>
        %15 = arith.addf %13, %14 : f64
        memref.store %15, %arg7[%arg8] : memref<?xf64>
      }
      %1 = memref.load %arg5[%arg8] : memref<?xf64>
      %2 = arith.mulf %arg1, %1 : f64
      %3 = memref.load %arg7[%arg8] : memref<?xf64>
      %4 = arith.mulf %arg2, %3 : f64
      %5 = arith.addf %2, %4 : f64
      memref.store %5, %arg7[%arg8] : memref<?xf64>
    }
    return
  }
