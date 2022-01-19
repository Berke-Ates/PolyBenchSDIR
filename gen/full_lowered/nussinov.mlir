module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str7("==END   DUMP_ARRAYS==\0A\00")
  llvm.mlir.global internal constant @str6("\0Aend   dump: %s\0A\00")
  llvm.mlir.global internal constant @str5("%d \00")
  llvm.mlir.global internal constant @str4("\0A\00")
  llvm.mlir.global internal constant @str3("table\00")
  llvm.mlir.global internal constant @str2("begin dump: %s\00")
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str1("==BEGIN DUMP_ARRAYS==\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @free(!llvm.ptr<i8>)
  llvm.func @strcmp(!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
  llvm.mlir.global internal constant @str0("\00")
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %c42_i32 = arith.constant 42 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c2500_i64 = arith.constant 2500 : i64
    %c2500_i32 = arith.constant 2500 : i32
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.ptr<array<2500 x i8>> : (i64) -> !llvm.ptr<ptr<array<2500 x i8>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<array<2500 x i8>>>
    %2 = call @polybench_alloc_data(%c2500_i64, %c1_i32) : (i64, i32) -> !llvm.ptr<i8>
    %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<array<2500 x i8>>
    llvm.store %3, %0 : !llvm.ptr<ptr<array<2500 x i8>>>
    %4 = memref.alloc() : memref<2500x2500xi32>
    %5 = llvm.getelementptr %3[%c0_i32, %c0_i32] : (!llvm.ptr<array<2500 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %6 = memref.cast %4 : memref<2500x2500xi32> to memref<?x2500xi32>
    call @init_array(%c2500_i32, %5, %6) : (i32, !llvm.ptr<i8>, memref<?x2500xi32>) -> ()
    %7 = llvm.getelementptr %3[%c0_i32, %c0_i32] : (!llvm.ptr<array<2500 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %8 = memref.cast %4 : memref<2500x2500xi32> to memref<?x2500xi32>
    call @kernel_nussinov(%c2500_i32, %7, %8) : (i32, !llvm.ptr<i8>, memref<?x2500xi32>) -> ()
    %9 = arith.cmpi sgt, %arg0, %c42_i32 : i32
    %10 = scf.if %9 -> (i1) {
      %12 = llvm.getelementptr %arg1[%c0_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
      %13 = llvm.load %12 : !llvm.ptr<ptr<i8>>
      %14 = llvm.mlir.addressof @str0 : !llvm.ptr<array<1 x i8>>
      %15 = llvm.getelementptr %14[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %16 = llvm.call @strcmp(%13, %15) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %17 = arith.trunci %16 : i32 to i1
      %18 = arith.xori %17, %true : i1
      scf.yield %18 : i1
    } else {
      scf.yield %false : i1
    }
    scf.if %10 {
      %12 = memref.cast %4 : memref<2500x2500xi32> to memref<?x2500xi32>
      call @print_array(%c2500_i32, %12) : (i32, memref<?x2500xi32>) -> ()
    }
    %11 = llvm.bitcast %3 : !llvm.ptr<array<2500 x i8>> to !llvm.ptr<i8>
    llvm.call @free(%11) : (!llvm.ptr<i8>) -> ()
    memref.dealloc %4 : memref<2500x2500xi32>
    return %c0_i32 : i32
  }
  func private @polybench_alloc_data(%arg0: i64, %arg1: i32) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = arith.extui %arg1 : i32 to i64
    %1 = arith.muli %arg0, %0 : i64
    %2 = llvm.call @malloc(%1) : (i64) -> !llvm.ptr<i8>
    return %2 : !llvm.ptr<i8>
  }
  func private @init_array(%arg0: i32, %arg1: !llvm.ptr<i8>, %arg2: memref<?x2500xi32>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c4_i32 = arith.constant 4 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = arith.index_cast %arg0 : i32 to index
    scf.for %arg3 = %c0 to %0 step %c1 {
      %2 = arith.index_cast %arg3 : index to i32
      %3 = arith.index_cast %arg3 : index to i64
      %4 = llvm.getelementptr %arg1[%3] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %5 = arith.addi %2, %c1_i32 : i32
      %6 = arith.remsi %5, %c4_i32 : i32
      %7 = arith.trunci %6 : i32 to i8
      llvm.store %7, %4 : !llvm.ptr<i8>
    }
    %1 = arith.index_cast %arg0 : i32 to index
    scf.for %arg3 = %c0 to %1 step %c1 {
      %2 = arith.index_cast %arg0 : i32 to index
      scf.for %arg4 = %c0 to %2 step %c1 {
        memref.store %c0_i32, %arg2[%arg3, %arg4] : memref<?x2500xi32>
      }
    }
    return
  }
  func @kernel_nussinov(%arg0: i32, %arg1: !llvm.ptr<i8>, %arg2: memref<?x2500xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
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
  func private @print_array(%arg0: i32, %arg1: memref<?x2500xi32>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c1_i32 = arith.constant 1 : i32
    %c20_i32 = arith.constant 20 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %2 = llvm.mlir.addressof @str1 : !llvm.ptr<array<23 x i8>>
    %3 = llvm.getelementptr %2[%c0_i32, %c0_i32] : (!llvm.ptr<array<23 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %4 = llvm.call @fprintf(%1, %3) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
    %5 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %7 = llvm.mlir.addressof @str2 : !llvm.ptr<array<15 x i8>>
    %8 = llvm.getelementptr %7[%c0_i32, %c0_i32] : (!llvm.ptr<array<15 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %9 = llvm.mlir.addressof @str3 : !llvm.ptr<array<6 x i8>>
    %10 = llvm.getelementptr %9[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %11 = llvm.call @fprintf(%6, %8, %10) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %12 = arith.index_cast %arg0 : i32 to index
    %13 = scf.for %arg2 = %c0 to %12 step %c1 iter_args(%arg3 = %c0_i32) -> (i32) {
      %26 = arith.index_cast %arg2 : index to i32
      %27 = arith.index_cast %arg0 : i32 to index
      %28 = scf.for %arg4 = %arg2 to %27 step %c1 iter_args(%arg5 = %arg3) -> (i32) {
        %29 = arith.subi %arg4, %arg2 : index
        %30 = arith.index_cast %29 : index to i32
        %31 = arith.addi %30, %arg3 : i32
        %32 = arith.subi %arg4, %arg2 : index
        %33 = arith.index_cast %32 : index to i32
        %34 = arith.addi %33, %26 : i32
        %35 = arith.index_cast %34 : i32 to index
        %36 = arith.remsi %31, %c20_i32 : i32
        %37 = arith.cmpi eq, %36, %c0_i32 : i32
        scf.if %37 {
          %45 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %46 = llvm.load %45 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
          %47 = llvm.mlir.addressof @str4 : !llvm.ptr<array<2 x i8>>
          %48 = llvm.getelementptr %47[%c0_i32, %c0_i32] : (!llvm.ptr<array<2 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %49 = llvm.call @fprintf(%46, %48) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
        }
        %38 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %39 = llvm.load %38 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
        %40 = llvm.mlir.addressof @str5 : !llvm.ptr<array<4 x i8>>
        %41 = llvm.getelementptr %40[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %42 = memref.load %arg1[%arg2, %35] : memref<?x2500xi32>
        %43 = llvm.call @fprintf(%39, %41, %42) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, i32) -> i32
        %44 = arith.addi %31, %c1_i32 : i32
        scf.yield %44 : i32
      }
      scf.yield %28 : i32
    }
    %14 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %15 = llvm.load %14 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %16 = llvm.mlir.addressof @str6 : !llvm.ptr<array<17 x i8>>
    %17 = llvm.getelementptr %16[%c0_i32, %c0_i32] : (!llvm.ptr<array<17 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %18 = llvm.mlir.addressof @str3 : !llvm.ptr<array<6 x i8>>
    %19 = llvm.getelementptr %18[%c0_i32, %c0_i32] : (!llvm.ptr<array<6 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %20 = llvm.call @fprintf(%15, %17, %19) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %21 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %22 = llvm.load %21 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
    %23 = llvm.mlir.addressof @str7 : !llvm.ptr<array<23 x i8>>
    %24 = llvm.getelementptr %23[%c0_i32, %c0_i32] : (!llvm.ptr<array<23 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %25 = llvm.call @fprintf(%22, %24) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
    return
  }
}

