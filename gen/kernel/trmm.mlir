  func private @kernel_trmm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x1000xf64>, %arg4: memref<?x1200xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %c0 to %1 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg6 = %c0_0 to %0 step %c1_1 {
        %c1_2 = arith.constant 1 : index
        %2 = arith.addi %arg5, %c1_2 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg7 = %2 to %1 step %c1_3 {
          %5 = memref.load %arg3[%arg7, %arg5] : memref<?x1000xf64>
          %6 = memref.load %arg4[%arg7, %arg6] : memref<?x1200xf64>
          %7 = arith.mulf %5, %6 : f64
          %8 = memref.load %arg4[%arg5, %arg6] : memref<?x1200xf64>
          %9 = arith.addf %8, %7 : f64
          memref.store %9, %arg4[%arg5, %arg6] : memref<?x1200xf64>
        }
        %3 = memref.load %arg4[%arg5, %arg6] : memref<?x1200xf64>
        %4 = arith.mulf %arg2, %3 : f64
        memref.store %4, %arg4[%arg5, %arg6] : memref<?x1200xf64>
      }
    }
    return
  }
