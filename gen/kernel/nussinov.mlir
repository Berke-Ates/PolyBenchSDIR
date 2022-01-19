  func private @kernel_nussinov(%arg0: i32, %arg1: !llvm.ptr<i8>, %arg2: memref<?x2500xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-1_i64 = arith.constant -1 : i64
    %c-1_i32 = arith.constant -1 : i32
    %c3_i32 = arith.constant 3 : i32
    %false = arith.constant false
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.index_cast %0 : index to i64
    %2 = arith.index_cast %arg0 : i32 to index
    %3 = arith.index_cast %arg0 : i32 to index
    %4 = arith.addi %arg0, %c-1_i32 : i32
    %5 = arith.addi %1, %c-1_i64 : i64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %6 = arith.index_cast %arg3 : index to i32
      %7 = arith.index_cast %arg3 : index to i64
      %8 = arith.subi %4, %6 : i32
      %9 = arith.addi %8, %c1_i32 : i32
      %c-1 = arith.constant -1 : index
      %10 = arith.muli %arg3, %c-1 : index
      %11 = arith.addi %10, %0 : index
      %c1_0 = arith.constant 1 : index
      scf.for %arg4 = %11 to %2 step %c1_0 {
        %12 = arith.index_cast %arg4 : index to i64
        %c0_1 = arith.constant 0 : index
        %c-1_2 = arith.constant -1 : index
        %13 = arith.addi %arg4, %c-1_2 : index
        %14 = arith.cmpi sge, %13, %c0_1 : index
        scf.if %14 {
          %c-1_10 = arith.constant -1 : index
          %25 = arith.muli %arg3, %c-1_10 : index
          %26 = arith.addi %25, %0 : index
          %c-1_11 = arith.constant -1 : index
          %27 = arith.addi %26, %c-1_11 : index
          %28 = memref.load %arg2[%27, %arg4] : memref<?x2500xi32>
          %c-1_12 = arith.constant -1 : index
          %29 = arith.muli %arg3, %c-1_12 : index
          %30 = arith.addi %29, %0 : index
          %c-1_13 = arith.constant -1 : index
          %31 = arith.addi %30, %c-1_13 : index
          %c-1_14 = arith.constant -1 : index
          %32 = arith.addi %arg4, %c-1_14 : index
          %33 = memref.load %arg2[%31, %32] : memref<?x2500xi32>
          %34 = arith.cmpi sge, %28, %33 : i32
          %35 = select %34, %28, %33 : i32
          %c-1_15 = arith.constant -1 : index
          %36 = arith.muli %arg3, %c-1_15 : index
          %37 = arith.addi %36, %0 : index
          %c-1_16 = arith.constant -1 : index
          %38 = arith.addi %37, %c-1_16 : index
          memref.store %35, %arg2[%38, %arg4] : memref<?x2500xi32>
        }
        %c0_3 = arith.constant 0 : index
        %15 = arith.addi %arg3, %3 : index
        %c-1_4 = arith.constant -1 : index
        %16 = arith.muli %0, %c-1_4 : index
        %17 = arith.addi %15, %16 : index
        %c-1_5 = arith.constant -1 : index
        %18 = arith.addi %17, %c-1_5 : index
        %19 = arith.cmpi sge, %18, %c0_3 : index
        scf.if %19 {
          %c-1_10 = arith.constant -1 : index
          %25 = arith.muli %arg3, %c-1_10 : index
          %26 = arith.addi %25, %0 : index
          %c-1_11 = arith.constant -1 : index
          %27 = arith.addi %26, %c-1_11 : index
          %28 = memref.load %arg2[%27, %arg4] : memref<?x2500xi32>
          %c-1_12 = arith.constant -1 : index
          %29 = arith.muli %arg3, %c-1_12 : index
          %30 = arith.addi %29, %0 : index
          %31 = memref.load %arg2[%30, %arg4] : memref<?x2500xi32>
          %32 = arith.cmpi sge, %28, %31 : i32
          %33 = select %32, %28, %31 : i32
          %c-1_13 = arith.constant -1 : index
          %34 = arith.muli %arg3, %c-1_13 : index
          %35 = arith.addi %34, %0 : index
          %c-1_14 = arith.constant -1 : index
          %36 = arith.addi %35, %c-1_14 : index
          memref.store %33, %arg2[%36, %arg4] : memref<?x2500xi32>
        }
        %c0_6 = arith.constant 0 : index
        %c-1_7 = arith.constant -1 : index
        %20 = arith.addi %arg4, %c-1_7 : index
        %21 = arith.cmpi sge, %20, %c0_6 : index
        %22 = scf.if %21 -> (i1) {
          %25 = arith.cmpi slt, %9, %arg0 : i32
          scf.yield %25 : i1
        } else {
          scf.yield %false : i1
        }
        scf.if %22 {
          %c0_10 = arith.constant 0 : index
          %25 = arith.addi %arg4, %arg3 : index
          %c-1_11 = arith.constant -1 : index
          %26 = arith.muli %0, %c-1_11 : index
          %27 = arith.addi %25, %26 : index
          %c-1_12 = arith.constant -1 : index
          %28 = arith.addi %27, %c-1_12 : index
          %29 = arith.cmpi sge, %28, %c0_10 : index
          scf.if %29 {
            %c-1_13 = arith.constant -1 : index
            %30 = arith.muli %arg3, %c-1_13 : index
            %31 = arith.addi %30, %0 : index
            %c-1_14 = arith.constant -1 : index
            %32 = arith.addi %31, %c-1_14 : index
            %33 = memref.load %arg2[%32, %arg4] : memref<?x2500xi32>
            %c-1_15 = arith.constant -1 : index
            %34 = arith.muli %arg3, %c-1_15 : index
            %35 = arith.addi %34, %0 : index
            %c-1_16 = arith.constant -1 : index
            %36 = arith.addi %arg4, %c-1_16 : index
            %37 = memref.load %arg2[%35, %36] : memref<?x2500xi32>
            %38 = arith.subi %5, %7 : i64
            %39 = llvm.getelementptr %arg1[%38] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
            %40 = llvm.load %39 : !llvm.ptr<i8>
            %41 = arith.extsi %40 : i8 to i32
            %42 = llvm.getelementptr %arg1[%12] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
            %43 = llvm.load %42 : !llvm.ptr<i8>
            %44 = arith.extsi %43 : i8 to i32
            %45 = arith.addi %41, %44 : i32
            %46 = arith.cmpi eq, %45, %c3_i32 : i32
            %47 = select %46, %c1_i32, %c0_i32 : i32
            %48 = arith.addi %37, %47 : i32
            %49 = arith.cmpi sge, %33, %48 : i32
            %50 = scf.if %49 -> (i32) {
              %c-1_19 = arith.constant -1 : index
              %54 = arith.muli %arg3, %c-1_19 : index
              %55 = arith.addi %54, %0 : index
              %c-1_20 = arith.constant -1 : index
              %56 = arith.addi %55, %c-1_20 : index
              %57 = memref.load %arg2[%56, %arg4] : memref<?x2500xi32>
              scf.yield %57 : i32
            } else {
              %c-1_19 = arith.constant -1 : index
              %54 = arith.muli %arg3, %c-1_19 : index
              %55 = arith.addi %54, %0 : index
              %c-1_20 = arith.constant -1 : index
              %56 = arith.addi %arg4, %c-1_20 : index
              %57 = memref.load %arg2[%55, %56] : memref<?x2500xi32>
              %58 = llvm.load %39 : !llvm.ptr<i8>
              %59 = arith.extsi %58 : i8 to i32
              %60 = llvm.load %42 : !llvm.ptr<i8>
              %61 = arith.extsi %60 : i8 to i32
              %62 = arith.addi %59, %61 : i32
              %63 = arith.cmpi eq, %62, %c3_i32 : i32
              %64 = select %63, %c1_i32, %c0_i32 : i32
              %65 = arith.addi %57, %64 : i32
              scf.yield %65 : i32
            }
            %c-1_17 = arith.constant -1 : index
            %51 = arith.muli %arg3, %c-1_17 : index
            %52 = arith.addi %51, %0 : index
            %c-1_18 = arith.constant -1 : index
            %53 = arith.addi %52, %c-1_18 : index
            memref.store %50, %arg2[%53, %arg4] : memref<?x2500xi32>
          } else {
            %c-1_13 = arith.constant -1 : index
            %30 = arith.muli %arg3, %c-1_13 : index
            %31 = arith.addi %30, %0 : index
            %c-1_14 = arith.constant -1 : index
            %32 = arith.addi %31, %c-1_14 : index
            %33 = memref.load %arg2[%32, %arg4] : memref<?x2500xi32>
            %c-1_15 = arith.constant -1 : index
            %34 = arith.muli %arg3, %c-1_15 : index
            %35 = arith.addi %34, %0 : index
            %c-1_16 = arith.constant -1 : index
            %36 = arith.addi %arg4, %c-1_16 : index
            %37 = memref.load %arg2[%35, %36] : memref<?x2500xi32>
            %38 = arith.cmpi sge, %33, %37 : i32
            %39 = select %38, %33, %37 : i32
            %c-1_17 = arith.constant -1 : index
            %40 = arith.muli %arg3, %c-1_17 : index
            %41 = arith.addi %40, %0 : index
            %c-1_18 = arith.constant -1 : index
            %42 = arith.addi %41, %c-1_18 : index
            memref.store %39, %arg2[%42, %arg4] : memref<?x2500xi32>
          }
        }
        %c-1_8 = arith.constant -1 : index
        %23 = arith.muli %arg3, %c-1_8 : index
        %24 = arith.addi %23, %0 : index
        %c1_9 = arith.constant 1 : index
        scf.for %arg5 = %24 to %arg4 step %c1_9 {
          %c-1_10 = arith.constant -1 : index
          %25 = arith.muli %arg3, %c-1_10 : index
          %26 = arith.addi %25, %0 : index
          %c-1_11 = arith.constant -1 : index
          %27 = arith.addi %26, %c-1_11 : index
          %28 = memref.load %arg2[%27, %arg4] : memref<?x2500xi32>
          %c-1_12 = arith.constant -1 : index
          %29 = arith.muli %arg3, %c-1_12 : index
          %30 = arith.addi %29, %0 : index
          %c-1_13 = arith.constant -1 : index
          %31 = arith.addi %30, %c-1_13 : index
          %32 = memref.load %arg2[%31, %arg5] : memref<?x2500xi32>
          %c1_14 = arith.constant 1 : index
          %33 = arith.addi %arg5, %c1_14 : index
          %34 = memref.load %arg2[%33, %arg4] : memref<?x2500xi32>
          %35 = arith.addi %32, %34 : i32
          %36 = arith.cmpi sge, %28, %35 : i32
          %37 = scf.if %36 -> (i32) {
            scf.yield %28 : i32
          } else {
            %41 = arith.addi %32, %34 : i32
            scf.yield %41 : i32
          }
          %c-1_15 = arith.constant -1 : index
          %38 = arith.muli %arg3, %c-1_15 : index
          %39 = arith.addi %38, %0 : index
          %c-1_16 = arith.constant -1 : index
          %40 = arith.addi %39, %c-1_16 : index
          memref.store %37, %arg2[%40, %arg4] : memref<?x2500xi32>
        }
      }
    }
    return
  }
