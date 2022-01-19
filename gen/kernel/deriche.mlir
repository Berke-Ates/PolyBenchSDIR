  func private @kernel_deriche(%arg0: i32, %arg1: i32, %arg2: f32, %arg3: memref<?x2160xf32>, %arg4: memref<?x2160xf32>, %arg5: memref<?x2160xf32>, %arg6: memref<?x2160xf32>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant -2.000000e+00 : f32
    %cst_1 = arith.constant 2.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e+00 : f32
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = memref.alloca() : memref<1xf32>
    %2 = memref.alloca() : memref<1xf32>
    %3 = memref.alloca() : memref<1xf32>
    %4 = arith.negf %arg2 : f32
    %5 = math.exp %4 : f32
    %6 = arith.subf %cst_2, %5 : f32
    %7 = arith.mulf %6, %6 : f32
    %8 = arith.mulf %cst_1, %arg2 : f32
    %9 = arith.mulf %8, %5 : f32
    %10 = arith.addf %cst_2, %9 : f32
    %11 = math.exp %8 : f32
    %12 = arith.subf %10, %11 : f32
    %13 = arith.divf %7, %12 : f32
    %14 = arith.negf %arg2 : f32
    %15 = math.exp %14 : f32
    %16 = arith.mulf %13, %15 : f32
    %17 = arith.subf %arg2, %cst_2 : f32
    %18 = arith.mulf %16, %17 : f32
    %19 = arith.negf %arg2 : f32
    %20 = "llvm.intr.pow"(%cst_1, %19) : (f32, f32) -> f32
    %21 = arith.mulf %cst_0, %arg2 : f32
    %22 = math.exp %21 : f32
    %23 = arith.negf %22 : f32
    %24 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg7 = %c0 to %24 step %c1 {
      %c0_3 = arith.constant 0 : index
      memref.store %cst, %2[%c0_3] : memref<1xf32>
      %c0_4 = arith.constant 0 : index
      memref.store %cst, %1[%c0_4] : memref<1xf32>
      %c0_5 = arith.constant 0 : index
      memref.store %cst, %3[%c0_5] : memref<1xf32>
      %c0_6 = arith.constant 0 : index
      %c1_7 = arith.constant 1 : index
      scf.for %arg8 = %c0_6 to %0 step %c1_7 {
        %25 = memref.load %arg3[%arg7, %arg8] : memref<?x2160xf32>
        %26 = arith.mulf %13, %25 : f32
        %c0_8 = arith.constant 0 : index
        %27 = memref.load %3[%c0_8] : memref<1xf32>
        %28 = arith.mulf %18, %27 : f32
        %29 = arith.addf %26, %28 : f32
        %c0_9 = arith.constant 0 : index
        %30 = memref.load %2[%c0_9] : memref<1xf32>
        %31 = arith.mulf %20, %30 : f32
        %32 = arith.addf %29, %31 : f32
        %c0_10 = arith.constant 0 : index
        %33 = memref.load %1[%c0_10] : memref<1xf32>
        %34 = arith.mulf %23, %33 : f32
        %35 = arith.addf %32, %34 : f32
        memref.store %35, %arg5[%arg7, %arg8] : memref<?x2160xf32>
        %36 = memref.load %arg3[%arg7, %arg8] : memref<?x2160xf32>
        %c0_11 = arith.constant 0 : index
        memref.store %36, %3[%c0_11] : memref<1xf32>
        %c0_12 = arith.constant 0 : index
        memref.store %30, %1[%c0_12] : memref<1xf32>
        %37 = memref.load %arg5[%arg7, %arg8] : memref<?x2160xf32>
        %c0_13 = arith.constant 0 : index
        memref.store %37, %2[%c0_13] : memref<1xf32>
      }
    }
    return
  }
