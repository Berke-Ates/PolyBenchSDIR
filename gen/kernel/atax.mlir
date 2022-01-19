  func private @kernel_atax(%arg0: i32, %arg1: i32, %arg2: memref<?x2100xf64>, %arg3: memref<?xf64>, %arg4: memref<?xf64>, %arg5: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.index_cast %arg1 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %2 step %c1 {
      memref.store %cst, %arg4[%arg6] : memref<?xf64>
    }
    %3 = arith.index_cast %arg0 : i32 to index
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg6 = %c0_0 to %3 step %c1_1 {
      memref.store %cst, %arg5[%arg6] : memref<?xf64>
      %c0_2 = arith.constant 0 : index
      %c1_3 = arith.constant 1 : index
      scf.for %arg7 = %c0_2 to %0 step %c1_3 {
        %4 = memref.load %arg5[%arg6] : memref<?xf64>
        %5 = memref.load %arg2[%arg6, %arg7] : memref<?x2100xf64>
        %6 = memref.load %arg3[%arg7] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.addf %4, %7 : f64
        memref.store %8, %arg5[%arg6] : memref<?xf64>
      }
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %c0_4 to %1 step %c1_5 {
        %4 = memref.load %arg4[%arg7] : memref<?xf64>
        %5 = memref.load %arg2[%arg6, %arg7] : memref<?x2100xf64>
        %6 = memref.load %arg5[%arg6] : memref<?xf64>
        %7 = arith.mulf %5, %6 : f64
        %8 = arith.addf %4, %7 : f64
        memref.store %8, %arg4[%arg7] : memref<?xf64>
      }
    }
    return
  }
