  func private @kernel_covariance(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x1200xf64>, %arg4: memref<?x1200xf64>, %arg5: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %2 = arith.index_cast %arg1 : i32 to index
    %3 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %3 step %c1 {
      memref.store %cst_0, %arg5[%arg6] : memref<?xf64>
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg7 = %c0_5 to %0 step %c1_6 {
        %9 = memref.load %arg3[%arg7, %arg6] : memref<?x1200xf64>
        %10 = memref.load %arg5[%arg6] : memref<?xf64>
        %11 = arith.addf %10, %9 : f64
        memref.store %11, %arg5[%arg6] : memref<?xf64>
      }
      %7 = memref.load %arg5[%arg6] : memref<?xf64>
      %8 = arith.divf %7, %arg2 : f64
      memref.store %8, %arg5[%arg6] : memref<?xf64>
    }
    %4 = arith.index_cast %arg1 : i32 to index
    %c0_1 = arith.constant 0 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg6 = %c0_1 to %4 step %c1_2 {
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg7 = %c0_5 to %1 step %c1_6 {
        %7 = memref.load %arg5[%arg7] : memref<?xf64>
        %8 = memref.load %arg3[%arg6, %arg7] : memref<?x1200xf64>
        %9 = arith.subf %8, %7 : f64
        memref.store %9, %arg3[%arg6, %arg7] : memref<?x1200xf64>
      }
    }
    %5 = arith.index_cast %arg0 : i32 to index
    %6 = arith.subf %arg2, %cst : f64
    %c0_3 = arith.constant 0 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg6 = %c0_3 to %5 step %c1_4 {
      %c1_5 = arith.constant 1 : index
      scf.for %arg7 = %arg6 to %5 step %c1_5 {
        memref.store %cst_0, %arg4[%arg6, %arg7] : memref<?x1200xf64>
        %c0_6 = arith.constant 0 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg8 = %c0_6 to %2 step %c1_7 {
          %9 = memref.load %arg3[%arg8, %arg6] : memref<?x1200xf64>
          %10 = memref.load %arg3[%arg8, %arg7] : memref<?x1200xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = memref.load %arg4[%arg6, %arg7] : memref<?x1200xf64>
          %13 = arith.addf %12, %11 : f64
          memref.store %13, %arg4[%arg6, %arg7] : memref<?x1200xf64>
        }
        %7 = memref.load %arg4[%arg6, %arg7] : memref<?x1200xf64>
        %8 = arith.divf %7, %6 : f64
        memref.store %8, %arg4[%arg6, %arg7] : memref<?x1200xf64>
        memref.store %8, %arg4[%arg7, %arg6] : memref<?x1200xf64>
      }
    }
    return
  }
