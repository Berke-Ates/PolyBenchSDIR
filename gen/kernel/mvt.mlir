  func private @kernel_mvt(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?x2000xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %0 step %c1 {
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg7 = %c0_2 to %0 step %c1_3 {
        %2 = memref.load %arg1[%arg6] : memref<?xf64>
        %3 = memref.load %arg5[%arg6, %arg7] : memref<?x2000xf64>
        %4 = memref.load %arg3[%arg7] : memref<?xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %2, %5 : f64
        memref.store %6, %arg1[%arg6] : memref<?xf64>
      }
    }
    %1 = arith.index_cast %arg0 : i32 to index
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg6 = %c0_0 to %1 step %c1_1 {
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg7 = %c0_2 to %1 step %c1_3 {
        %2 = memref.load %arg2[%arg6] : memref<?xf64>
        %3 = memref.load %arg5[%arg7, %arg6] : memref<?x2000xf64>
        %4 = memref.load %arg4[%arg7] : memref<?xf64>
        %5 = arith.mulf %3, %4 : f64
        %6 = arith.addf %2, %5 : f64
        memref.store %6, %arg2[%arg6] : memref<?xf64>
      }
    }
    return
  }
