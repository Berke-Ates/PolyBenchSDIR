  func private @kernel_bicg(%arg0: i32, %arg1: i32, %arg2: memref<?x1900xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %1 step %c1 {
      memref.store %cst, %arg3[%arg7] : memref<?xf64>
    }
    %2 = arith.index_cast %arg1 : i32 to index
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg7 = %c0_0 to %2 step %c1_1 {
      memref.store %cst, %arg4[%arg7] : memref<?xf64>
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg8 = %c0_2 to %0 step %c1_3 {
        %3 = memref.load %arg3[%arg8] : memref<?xf64>
        %4 = memref.load %arg6[%arg7] : memref<?xf64>
        %5 = memref.load %arg2[%arg7, %arg8] : memref<?x1900xf64>
        %6 = arith.mulf %4, %5 : f64
        %7 = arith.addf %3, %6 : f64
        memref.store %7, %arg3[%arg8] : memref<?xf64>
        %8 = memref.load %arg4[%arg7] : memref<?xf64>
        %9 = memref.load %arg2[%arg7, %arg8] : memref<?x1900xf64>
        %10 = memref.load %arg5[%arg8] : memref<?xf64>
        %11 = arith.mulf %9, %10 : f64
        %12 = arith.addf %8, %11 : f64
        memref.store %12, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
