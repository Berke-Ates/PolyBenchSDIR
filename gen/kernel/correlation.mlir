  func private @kernel_correlation(%arg0: i32, %arg1: i32, %arg2: f64, %arg3: memref<?x1200xf64>, %arg4: memref<?x1200xf64>, %arg5: memref<?xf64>, %arg6: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 1.000000e+00 : f64
    %cst_0 = arith.constant 0.000000e+00 : f64
    %cst_1 = arith.constant 1.000000e-01 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg1 : i32 to index
    %2 = arith.index_cast %arg0 : i32 to index
    %3 = arith.index_cast %arg0 : i32 to index
    %4 = arith.index_cast %arg0 : i32 to index
    %5 = arith.index_cast %arg1 : i32 to index
    %6 = arith.index_cast %arg0 : i32 to index
    %7 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %7 step %c1 {
      memref.store %cst_0, %arg5[%arg7] : memref<?xf64>
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %c0_10 to %0 step %c1_11 {
        %16 = memref.load %arg3[%arg8, %arg7] : memref<?x1200xf64>
        %17 = memref.load %arg5[%arg7] : memref<?xf64>
        %18 = arith.addf %17, %16 : f64
        memref.store %18, %arg5[%arg7] : memref<?xf64>
      }
      %14 = memref.load %arg5[%arg7] : memref<?xf64>
      %15 = arith.divf %14, %arg2 : f64
      memref.store %15, %arg5[%arg7] : memref<?xf64>
    }
    %8 = arith.index_cast %arg0 : i32 to index
    %c0_2 = arith.constant 0 : index
    %c1_3 = arith.constant 1 : index
    scf.for %arg7 = %c0_2 to %8 step %c1_3 {
      memref.store %cst_0, %arg6[%arg7] : memref<?xf64>
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %c0_10 to %1 step %c1_11 {
        %19 = memref.load %arg3[%arg8, %arg7] : memref<?x1200xf64>
        %20 = memref.load %arg5[%arg7] : memref<?xf64>
        %21 = arith.subf %19, %20 : f64
        %22 = arith.subf %19, %20 : f64
        %23 = arith.mulf %21, %22 : f64
        %24 = memref.load %arg6[%arg7] : memref<?xf64>
        %25 = arith.addf %24, %23 : f64
        memref.store %25, %arg6[%arg7] : memref<?xf64>
      }
      %14 = memref.load %arg6[%arg7] : memref<?xf64>
      %15 = arith.divf %14, %arg2 : f64
      %16 = math.sqrt %15 : f64
      %17 = arith.cmpf ule, %16, %cst_1 : f64
      %18 = select %17, %cst, %16 : f64
      memref.store %18, %arg6[%arg7] : memref<?xf64>
    }
    %9 = arith.index_cast %arg1 : i32 to index
    %10 = math.sqrt %arg2 : f64
    %c0_4 = arith.constant 0 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg7 = %c0_4 to %9 step %c1_5 {
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %c0_10 to %2 step %c1_11 {
        %14 = memref.load %arg5[%arg8] : memref<?xf64>
        %15 = memref.load %arg3[%arg7, %arg8] : memref<?x1200xf64>
        %16 = arith.subf %15, %14 : f64
        memref.store %16, %arg3[%arg7, %arg8] : memref<?x1200xf64>
        %17 = memref.load %arg6[%arg8] : memref<?xf64>
        %18 = arith.mulf %10, %17 : f64
        %19 = arith.divf %16, %18 : f64
        memref.store %19, %arg3[%arg7, %arg8] : memref<?x1200xf64>
      }
    }
    %c0_6 = arith.constant 0 : index
    %c-1 = arith.constant -1 : index
    %11 = arith.addi %3, %c-1 : index
    %c1_7 = arith.constant 1 : index
    scf.for %arg7 = %c0_6 to %11 step %c1_7 {
      memref.store %cst, %arg4[%arg7, %arg7] : memref<?x1200xf64>
      %c1_10 = arith.constant 1 : index
      %14 = arith.addi %arg7, %c1_10 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg8 = %14 to %4 step %c1_11 {
        memref.store %cst_0, %arg4[%arg7, %arg8] : memref<?x1200xf64>
        %c0_12 = arith.constant 0 : index
        %c1_13 = arith.constant 1 : index
        scf.for %arg9 = %c0_12 to %5 step %c1_13 {
          %16 = memref.load %arg3[%arg9, %arg7] : memref<?x1200xf64>
          %17 = memref.load %arg3[%arg9, %arg8] : memref<?x1200xf64>
          %18 = arith.mulf %16, %17 : f64
          %19 = memref.load %arg4[%arg7, %arg8] : memref<?x1200xf64>
          %20 = arith.addf %19, %18 : f64
          memref.store %20, %arg4[%arg7, %arg8] : memref<?x1200xf64>
        }
        %15 = memref.load %arg4[%arg7, %arg8] : memref<?x1200xf64>
        memref.store %15, %arg4[%arg8, %arg7] : memref<?x1200xf64>
      }
    }
    %c-1_8 = arith.constant -1 : index
    %12 = arith.addi %6, %c-1_8 : index
    %c-1_9 = arith.constant -1 : index
    %13 = arith.addi %6, %c-1_9 : index
    memref.store %cst, %arg4[%12, %13] : memref<?x1200xf64>
    return
  }
