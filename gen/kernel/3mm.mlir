  func private @kernel_3mm(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: memref<?x900xf64>, %arg6: memref<?x1000xf64>, %arg7: memref<?x900xf64>, %arg8: memref<?x1100xf64>, %arg9: memref<?x1200xf64>, %arg10: memref<?x1100xf64>, %arg11: memref<?x1100xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg3 : i32 to index
    %3 = arith.index_cast %arg4 : i32 to index
    %4 = arith.index_cast %arg3 : i32 to index
    %5 = arith.index_cast %arg1 : i32 to index
    %6 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg12 = %c0 to %6 step %c1 {
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg13 = %c0_4 to %0 step %c1_5 {
        memref.store %cst, %arg5[%arg12, %arg13] : memref<?x900xf64>
        %c0_6 = arith.constant 0 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg14 = %c0_6 to %1 step %c1_7 {
          %9 = memref.load %arg6[%arg12, %arg14] : memref<?x1000xf64>
          %10 = memref.load %arg7[%arg14, %arg13] : memref<?x900xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = memref.load %arg5[%arg12, %arg13] : memref<?x900xf64>
          %13 = arith.addf %12, %11 : f64
          memref.store %13, %arg5[%arg12, %arg13] : memref<?x900xf64>
        }
      }
    }
    %7 = arith.index_cast %arg1 : i32 to index
    %c0_0 = arith.constant 0 : index
    %c1_1 = arith.constant 1 : index
    scf.for %arg12 = %c0_0 to %7 step %c1_1 {
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg13 = %c0_4 to %2 step %c1_5 {
        memref.store %cst, %arg8[%arg12, %arg13] : memref<?x1100xf64>
        %c0_6 = arith.constant 0 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg14 = %c0_6 to %3 step %c1_7 {
          %9 = memref.load %arg9[%arg12, %arg14] : memref<?x1200xf64>
          %10 = memref.load %arg10[%arg14, %arg13] : memref<?x1100xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = memref.load %arg8[%arg12, %arg13] : memref<?x1100xf64>
          %13 = arith.addf %12, %11 : f64
          memref.store %13, %arg8[%arg12, %arg13] : memref<?x1100xf64>
        }
      }
    }
    %8 = arith.index_cast %arg0 : i32 to index
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg12 = %c0_2 to %8 step %c1_3 {
      %c0_4 = arith.constant 0 : index
      %c1_5 = arith.constant 1 : index
      scf.for %arg13 = %c0_4 to %4 step %c1_5 {
        memref.store %cst, %arg11[%arg12, %arg13] : memref<?x1100xf64>
        %c0_6 = arith.constant 0 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg14 = %c0_6 to %5 step %c1_7 {
          %9 = memref.load %arg5[%arg12, %arg14] : memref<?x900xf64>
          %10 = memref.load %arg8[%arg14, %arg13] : memref<?x1100xf64>
          %11 = arith.mulf %9, %10 : f64
          %12 = memref.load %arg11[%arg12, %arg13] : memref<?x1100xf64>
          %13 = arith.addf %12, %11 : f64
          memref.store %13, %arg11[%arg12, %arg13] : memref<?x1100xf64>
        }
      }
    }
    return
  }
