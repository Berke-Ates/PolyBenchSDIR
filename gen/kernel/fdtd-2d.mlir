  func private @kernel_fdtd_2d(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x1200xf64>, %arg4: memref<?x1200xf64>, %arg5: memref<?x1200xf64>, %arg6: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.69999999999999996 : f64
    %cst_0 = arith.constant 5.000000e-01 : f64
    %0 = arith.index_cast %arg2 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.index_cast %arg2 : i32 to index
    %3 = arith.index_cast %arg1 : i32 to index
    %4 = arith.index_cast %arg2 : i32 to index
    %5 = arith.index_cast %arg1 : i32 to index
    %6 = arith.index_cast %arg2 : i32 to index
    %7 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %7 step %c1 {
      %c0_1 = arith.constant 0 : index
      %c1_2 = arith.constant 1 : index
      scf.for %arg8 = %c0_1 to %0 step %c1_2 {
        %9 = memref.load %arg6[%arg7] : memref<?xf64>
        %c0_9 = arith.constant 0 : index
        memref.store %9, %arg4[%c0_9, %arg8] : memref<?x1200xf64>
      }
      %c1_3 = arith.constant 1 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg8 = %c1_3 to %1 step %c1_4 {
        %c0_9 = arith.constant 0 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg9 = %c0_9 to %2 step %c1_10 {
          %9 = memref.load %arg4[%arg8, %arg9] : memref<?x1200xf64>
          %10 = memref.load %arg5[%arg8, %arg9] : memref<?x1200xf64>
          %c-1_11 = arith.constant -1 : index
          %11 = arith.addi %arg8, %c-1_11 : index
          %12 = memref.load %arg5[%11, %arg9] : memref<?x1200xf64>
          %13 = arith.subf %10, %12 : f64
          %14 = arith.mulf %cst_0, %13 : f64
          %15 = arith.subf %9, %14 : f64
          memref.store %15, %arg4[%arg8, %arg9] : memref<?x1200xf64>
        }
      }
      %c0_5 = arith.constant 0 : index
      %c1_6 = arith.constant 1 : index
      scf.for %arg8 = %c0_5 to %3 step %c1_6 {
        %c1_9 = arith.constant 1 : index
        %c1_10 = arith.constant 1 : index
        scf.for %arg9 = %c1_9 to %4 step %c1_10 {
          %9 = memref.load %arg3[%arg8, %arg9] : memref<?x1200xf64>
          %10 = memref.load %arg5[%arg8, %arg9] : memref<?x1200xf64>
          %c-1_11 = arith.constant -1 : index
          %11 = arith.addi %arg9, %c-1_11 : index
          %12 = memref.load %arg5[%arg8, %11] : memref<?x1200xf64>
          %13 = arith.subf %10, %12 : f64
          %14 = arith.mulf %cst_0, %13 : f64
          %15 = arith.subf %9, %14 : f64
          memref.store %15, %arg3[%arg8, %arg9] : memref<?x1200xf64>
        }
      }
      %c0_7 = arith.constant 0 : index
      %c-1 = arith.constant -1 : index
      %8 = arith.addi %5, %c-1 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg8 = %c0_7 to %8 step %c1_8 {
        %c0_9 = arith.constant 0 : index
        %c-1_10 = arith.constant -1 : index
        %9 = arith.addi %6, %c-1_10 : index
        %c1_11 = arith.constant 1 : index
        scf.for %arg9 = %c0_9 to %9 step %c1_11 {
          %10 = memref.load %arg5[%arg8, %arg9] : memref<?x1200xf64>
          %c1_12 = arith.constant 1 : index
          %11 = arith.addi %arg9, %c1_12 : index
          %12 = memref.load %arg3[%arg8, %11] : memref<?x1200xf64>
          %13 = memref.load %arg3[%arg8, %arg9] : memref<?x1200xf64>
          %14 = arith.subf %12, %13 : f64
          %c1_13 = arith.constant 1 : index
          %15 = arith.addi %arg8, %c1_13 : index
          %16 = memref.load %arg4[%15, %arg9] : memref<?x1200xf64>
          %17 = arith.addf %14, %16 : f64
          %18 = memref.load %arg4[%arg8, %arg9] : memref<?x1200xf64>
          %19 = arith.subf %17, %18 : f64
          %20 = arith.mulf %cst, %19 : f64
          %21 = arith.subf %10, %20 : f64
          memref.store %21, %arg5[%arg8, %arg9] : memref<?x1200xf64>
        }
      }
    }
    return
  }
