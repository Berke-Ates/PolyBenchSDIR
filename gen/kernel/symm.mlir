  func private @kernel_symm(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: f64, %arg4: memref<?x1200xf64>, %arg5: memref<?x1000xf64>, %arg6: memref<?x1200xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = memref.alloca() : memref<1xf64>
    %2 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %2 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg8 = %c0_0 to %0 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        memref.store %cst, %1[%c0_2] : memref<1xf64>
        %c0_3 = arith.constant 0 : index
        %c1_4 = arith.constant 1 : index
        scf.for %arg9 = %c0_3 to %arg7 step %c1_4 {
          %13 = memref.load %arg6[%arg7, %arg8] : memref<?x1200xf64>
          %14 = arith.mulf %arg2, %13 : f64
          %15 = memref.load %arg5[%arg7, %arg9] : memref<?x1000xf64>
          %16 = arith.mulf %14, %15 : f64
          %17 = memref.load %arg4[%arg9, %arg8] : memref<?x1200xf64>
          %18 = arith.addf %17, %16 : f64
          memref.store %18, %arg4[%arg9, %arg8] : memref<?x1200xf64>
          %19 = memref.load %arg6[%arg9, %arg8] : memref<?x1200xf64>
          %20 = memref.load %arg5[%arg7, %arg9] : memref<?x1000xf64>
          %21 = arith.mulf %19, %20 : f64
          %c0_6 = arith.constant 0 : index
          %22 = memref.load %1[%c0_6] : memref<1xf64>
          %23 = arith.addf %22, %21 : f64
          %c0_7 = arith.constant 0 : index
          memref.store %23, %1[%c0_7] : memref<1xf64>
        }
        %3 = memref.load %arg4[%arg7, %arg8] : memref<?x1200xf64>
        %4 = arith.mulf %arg3, %3 : f64
        %5 = memref.load %arg6[%arg7, %arg8] : memref<?x1200xf64>
        %6 = arith.mulf %arg2, %5 : f64
        %7 = memref.load %arg5[%arg7, %arg7] : memref<?x1000xf64>
        %8 = arith.mulf %6, %7 : f64
        %9 = arith.addf %4, %8 : f64
        %c0_5 = arith.constant 0 : index
        %10 = memref.load %1[%c0_5] : memref<1xf64>
        %11 = arith.mulf %arg2, %10 : f64
        %12 = arith.addf %9, %11 : f64
        memref.store %12, %arg4[%arg7, %arg8] : memref<?x1200xf64>
      }
    }
    return
  }
