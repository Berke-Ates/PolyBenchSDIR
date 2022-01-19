  func private @kernel_gemm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: f64, %arg4: f64, %arg5: memref<?x1100xf64>, %arg6: memref<?x1200xf64>, %arg7: memref<?x1100xf64>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg8 = %c0 to %3 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg9 = %c0_0 to %0 step %c1_1 {
        %4 = memref.load %arg5[%arg8, %arg9] : memref<?x1100xf64>
        %5 = arith.mulf %4, %arg4 : f64
        memref.store %5, %arg5[%arg8, %arg9] : memref<?x1100xf64>
      }
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg9 = %c0_2 to %1 step %c1_3 {
        %c0_4 = arith.constant 0 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg10 = %c0_4 to %2 step %c1_5 {
          %4 = memref.load %arg6[%arg8, %arg9] : memref<?x1200xf64>
          %5 = arith.mulf %arg3, %4 : f64
          %6 = memref.load %arg7[%arg9, %arg10] : memref<?x1100xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %arg5[%arg8, %arg10] : memref<?x1100xf64>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %arg5[%arg8, %arg10] : memref<?x1100xf64>
        }
      }
    }
    return
  }
