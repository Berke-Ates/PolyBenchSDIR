  func private @kernel_durbin(%arg0: i32, %arg1: memref<?xf64>, %arg2: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f64
    %cst_0 = arith.constant 1.000000e+00 : f64
    %0 = memref.alloca() : memref<1xf64>
    %1 = memref.alloca() : memref<1xf64>
    %2 = memref.alloca() : memref<1xf64>
    %3 = memref.alloca() : memref<2000xf64>
    %c0 = arith.constant 0 : index
    %4 = memref.load %arg1[%c0] : memref<?xf64>
    %5 = arith.negf %4 : f64
    %c0_1 = arith.constant 0 : index
    memref.store %5, %arg2[%c0_1] : memref<?xf64>
    %c0_2 = arith.constant 0 : index
    memref.store %cst_0, %1[%c0_2] : memref<1xf64>
    %c0_3 = arith.constant 0 : index
    %6 = memref.load %arg1[%c0_3] : memref<?xf64>
    %7 = arith.negf %6 : f64
    %c0_4 = arith.constant 0 : index
    memref.store %7, %2[%c0_4] : memref<1xf64>
    %8 = arith.index_cast %arg0 : i32 to index
    %c1 = arith.constant 1 : index
    %c1_5 = arith.constant 1 : index
    scf.for %arg3 = %c1 to %8 step %c1_5 {
      %c0_6 = arith.constant 0 : index
      %9 = memref.load %1[%c0_6] : memref<1xf64>
      %c0_7 = arith.constant 0 : index
      %10 = memref.load %2[%c0_7] : memref<1xf64>
      %11 = arith.mulf %10, %10 : f64
      %12 = arith.subf %cst_0, %11 : f64
      %13 = arith.mulf %12, %9 : f64
      %c0_8 = arith.constant 0 : index
      memref.store %13, %1[%c0_8] : memref<1xf64>
      %c0_9 = arith.constant 0 : index
      memref.store %cst, %0[%c0_9] : memref<1xf64>
      %c0_10 = arith.constant 0 : index
      %c1_11 = arith.constant 1 : index
      scf.for %arg4 = %c0_10 to %arg3 step %c1_11 {
        %c-1 = arith.constant -1 : index
        %19 = arith.muli %arg4, %c-1 : index
        %20 = arith.addi %arg3, %19 : index
        %c-1_18 = arith.constant -1 : index
        %21 = arith.addi %20, %c-1_18 : index
        %22 = memref.load %arg1[%21] : memref<?xf64>
        %23 = memref.load %arg2[%arg4] : memref<?xf64>
        %24 = arith.mulf %22, %23 : f64
        %c0_19 = arith.constant 0 : index
        %25 = memref.load %0[%c0_19] : memref<1xf64>
        %26 = arith.addf %25, %24 : f64
        %c0_20 = arith.constant 0 : index
        memref.store %26, %0[%c0_20] : memref<1xf64>
      }
      %14 = memref.load %arg1[%arg3] : memref<?xf64>
      %c0_12 = arith.constant 0 : index
      %15 = memref.load %0[%c0_12] : memref<1xf64>
      %16 = arith.addf %14, %15 : f64
      %17 = arith.negf %16 : f64
      %18 = arith.divf %17, %13 : f64
      %c0_13 = arith.constant 0 : index
      memref.store %18, %2[%c0_13] : memref<1xf64>
      %c0_14 = arith.constant 0 : index
      %c1_15 = arith.constant 1 : index
      scf.for %arg4 = %c0_14 to %arg3 step %c1_15 {
        %19 = memref.load %arg2[%arg4] : memref<?xf64>
        %c-1 = arith.constant -1 : index
        %20 = arith.muli %arg4, %c-1 : index
        %21 = arith.addi %arg3, %20 : index
        %c-1_18 = arith.constant -1 : index
        %22 = arith.addi %21, %c-1_18 : index
        %23 = memref.load %arg2[%22] : memref<?xf64>
        %24 = arith.mulf %18, %23 : f64
        %25 = arith.addf %19, %24 : f64
        memref.store %25, %3[%arg4] : memref<2000xf64>
      }
      %c0_16 = arith.constant 0 : index
      %c1_17 = arith.constant 1 : index
      scf.for %arg4 = %c0_16 to %arg3 step %c1_17 {
        %19 = memref.load %3[%arg4] : memref<2000xf64>
        memref.store %19, %arg2[%arg4] : memref<?xf64>
      }
      memref.store %18, %arg2[%arg3] : memref<?xf64>
    }
    return
  }
