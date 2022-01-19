#map0 = affine_map<(d0)[s0] -> (-d0 + s0)>
#map1 = affine_map<(d0)[s0] -> (-d0 + s0 - 1)>
#map2 = affine_map<(d0) -> (d0)>
#set0 = affine_set<(d0)[s0] : (-d0 + s0 - 1 >= 0)>
#set1 = affine_set<(d0) : (d0 - 1 >= 0)>
#set2 = affine_set<(d0, d1)[s0] : (d0 + d1 - s0 - 1 >= 0)>
#set3 = affine_set<(d0)[s0] : (-d0 + s0 >= 0)>
#set4 = affine_set<(d0) : (d0 + 1 >= 0)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"}  {
  llvm.mlir.global internal constant @str19("assertion failed: %s\0A\00")
  llvm.func @gettimeofday(!llvm.ptr<struct<(i64, i64)>>, !llvm.ptr<struct<(i32, i32)>>) -> i32
  llvm.mlir.global internal constant @str18("Giving up ... can't read input\0A\00")
  llvm.mlir.global internal constant @str17("Sorry, I didn't understand that...\0A\00")
  llvm.mlir.global internal constant @str16("%d\00")
  llvm.func @__isoc99_scanf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str15("%s%s\00")
  llvm.mlir.global internal constant @str14("k == -1\00")
  llvm.mlir.global internal constant @str13("%3d \00")
  llvm.mlir.global internal constant @str12("\0A\00")
  llvm.mlir.global external @base_print() : !llvm.array<4 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<4 x ptr<i8>>
    llvm.return %0 : !llvm.array<4 x ptr<i8>>
  }
  llvm.mlir.global internal constant @str11("%3s \00")
  llvm.mlir.global internal constant @str10("0 <= 0 && 0 < size && 0 <= size-1 && size-1 < size\00")
  llvm.mlir.global internal constant @str9("N(0, size-1) = %d\0A\00")
  llvm.mlir.global internal constant @str8("done.\0ATime elapsed: %fs\0A\00")
  llvm.mlir.global internal constant @str7("0 <= k+1 && k+1 < size && 0 <= j && j < size\00")
  llvm.mlir.global internal constant @str6("0 <= i && i < size && 0 <= k && k < size\00")
  llvm.mlir.global internal constant @str5("0 <= i+1 && i+1 < size && 0 <= j-1 && j-1 < size\00")
  memref.global @N_array : memref<16307x16307xi32> = uninitialized
  llvm.mlir.global internal constant @str4("0 <= i && i < size && 0 <= j && j < size\00")
  memref.global @seq : memref<16307xi32> = uninitialized
  llvm.func @fprintf(!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str3("size (%d) < MAX_SIZE (%d)\0A\00")
  llvm.mlir.global external @stderr() : !llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str2("Running Nussinov RNA algorithm%s for sequence of length %d, random data with seed %d.\0A\00")
  llvm.mlir.global internal constant @str1("\00")
  llvm.mlir.global internal constant @str0("Enter length of random mRNA sequence (2200 is average for human mRNA): \00")
  func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %c48_i32 = arith.constant 48 : i32
    %false = arith.constant false
    %c4_i32 = arith.constant 4 : i32
    %c1_i32 = arith.constant 1 : i32
    %c16307_i32 = arith.constant 16307 : i32
    %c42_i32 = arith.constant 42 : i32
    %c-1_i32 = arith.constant -1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.addressof @str0 : !llvm.ptr<array<72 x i8>>
    %2 = llvm.getelementptr %1[%c0_i32, %c0_i32] : (!llvm.ptr<array<72 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %3 = call @getint(%2) : (!llvm.ptr<i8>) -> i32
    %4 = arith.index_cast %3 : i32 to index
    %5 = arith.index_cast %3 : i32 to index
    %6 = arith.index_cast %3 : i32 to index
    %7 = llvm.load %0 : !llvm.ptr<ptr<i8>>
    %8 = llvm.mlir.addressof @str1 : !llvm.ptr<array<1 x i8>>
    %9 = llvm.getelementptr %8[%c0_i32, %c0_i32] : (!llvm.ptr<array<1 x i8>>, i32, i32) -> !llvm.ptr<i8>
    llvm.store %9, %0 : !llvm.ptr<ptr<i8>>
    %10 = llvm.mlir.addressof @str2 : !llvm.ptr<array<87 x i8>>
    %11 = llvm.getelementptr %10[%c0_i32, %c0_i32] : (!llvm.ptr<array<87 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %12 = llvm.call @printf(%11, %9, %3, %c42_i32) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, i32) -> i32
    %13 = arith.cmpi sgt, %3, %c16307_i32 : i32
    scf.if %13 {
      %37 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %39 = llvm.mlir.addressof @str3 : !llvm.ptr<array<27 x i8>>
      %40 = llvm.getelementptr %39[%c0_i32, %c0_i32] : (!llvm.ptr<array<27 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %41 = llvm.call @fprintf(%38, %40, %c16307_i32, %3) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, i32, i32) -> i32
      call @exit(%c1_i32) : (i32) -> ()
    }
    call @srand(%c42_i32) : (i32) -> ()
    %14 = arith.index_cast %3 : i32 to index
    scf.for %arg2 = %c0 to %14 step %c1 {
      %37 = memref.get_global @seq : memref<16307xi32>
      %38 = call @rand() : () -> i32
      %39 = arith.remsi %38, %c4_i32 : i32
      memref.store %39, %37[%arg2] : memref<16307xi32>
    }
    %15 = call @cur_time() : () -> f64
    %16 = arith.addi %3, %c-1_i32 : i32
    %17 = memref.get_global @N_array : memref<16307x16307xi32>
    affine.for %arg2 = 0 to %4 {
      %37 = arith.index_cast %arg2 : index to i32
      %38 = arith.subi %16, %37 : i32
      %39 = arith.addi %38, %c1_i32 : i32
      %40 = affine.if #set0(%arg2)[%4] -> i1 {
        %42 = arith.cmpi slt, %38, %3 : i32
        affine.yield %42 : i1
      } else {
        affine.yield %false : i1
      }
      %41 = affine.if #set0(%arg2)[%4] -> i1 {
        %42 = arith.cmpi slt, %38, %3 : i32
        affine.yield %42 : i1
      } else {
        affine.yield %false : i1
      }
      affine.for %arg3 = #map0(%arg2)[%4] to %5 {
        %42 = arith.index_cast %arg3 : index to i32
        %43 = arith.addi %42, %c-1_i32 : i32
        %44 = affine.if #set1(%arg3) -> i1 {
          %48 = arith.cmpi slt, %39, %3 : i32
          affine.yield %48 : i1
        } else {
          affine.yield %false : i1
        }
        scf.if %44 {
          affine.if #set2(%arg3, %arg2)[%4] {
            %48 = llvm.mlir.addressof @str4 : !llvm.ptr<array<41 x i8>>
            %49 = llvm.getelementptr %48[%c0_i32, %c0_i32] : (!llvm.ptr<array<41 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %50 = affine.if #set0(%arg2)[%4] -> i1 {
              %69 = arith.cmpi slt, %38, %3 : i32
              affine.yield %69 : i1
            } else {
              affine.yield %false : i1
            }
            %51 = scf.if %50 -> (i1) {
              %69 = arith.cmpi sle, %c0_i32, %42 : i32
              scf.yield %69 : i1
            } else {
              scf.yield %false : i1
            }
            %52 = scf.if %51 -> (i1) {
              %69 = arith.cmpi slt, %42, %3 : i32
              scf.yield %69 : i1
            } else {
              scf.yield %false : i1
            }
            %53 = arith.extsi %52 : i1 to i32
            call @eassert_func(%49, %53) : (!llvm.ptr<i8>, i32) -> ()
            %54 = memref.get_global @N_array : memref<16307x16307xi32>
            %55 = affine.load %54[-%arg2 + symbol(%4) - 1, %arg3] : memref<16307x16307xi32>
            %56 = llvm.mlir.addressof @str5 : !llvm.ptr<array<49 x i8>>
            %57 = llvm.getelementptr %56[%c0_i32, %c0_i32] : (!llvm.ptr<array<49 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %58 = affine.if #set3(%arg2)[%4] -> i1 {
              %69 = arith.cmpi slt, %39, %3 : i32
              affine.yield %69 : i1
            } else {
              affine.yield %false : i1
            }
            %59 = scf.if %58 -> (i1) {
              %69 = arith.cmpi sle, %c0_i32, %43 : i32
              scf.yield %69 : i1
            } else {
              scf.yield %false : i1
            }
            %60 = scf.if %59 -> (i1) {
              %69 = arith.cmpi slt, %43, %3 : i32
              scf.yield %69 : i1
            } else {
              scf.yield %false : i1
            }
            %61 = arith.extsi %60 : i1 to i32
            call @eassert_func(%57, %61) : (!llvm.ptr<i8>, i32) -> ()
            %62 = affine.load %54[-%arg2 + symbol(%4), %arg3 - 1] : memref<16307x16307xi32>
            %63 = memref.get_global @seq : memref<16307xi32>
            %64 = affine.load %63[-%arg2 + symbol(%4) - 1] : memref<16307xi32>
            %65 = affine.load %63[%arg3] : memref<16307xi32>
            %66 = call @match(%64, %65) : (i32, i32) -> i32
            %67 = arith.addi %62, %66 : i32
            %68 = call @max_score(%55, %67) : (i32, i32) -> i32
            affine.store %68, %54[-%arg2 + symbol(%4) - 1, %arg3] : memref<16307x16307xi32>
          } else {
            %48 = llvm.mlir.addressof @str4 : !llvm.ptr<array<41 x i8>>
            %49 = llvm.getelementptr %48[%c0_i32, %c0_i32] : (!llvm.ptr<array<41 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %50 = affine.if #set0(%arg2)[%4] -> i1 {
              %64 = arith.cmpi slt, %38, %3 : i32
              affine.yield %64 : i1
            } else {
              affine.yield %false : i1
            }
            %51 = scf.if %50 -> (i1) {
              %64 = arith.cmpi sle, %c0_i32, %42 : i32
              scf.yield %64 : i1
            } else {
              scf.yield %false : i1
            }
            %52 = scf.if %51 -> (i1) {
              %64 = arith.cmpi slt, %42, %3 : i32
              scf.yield %64 : i1
            } else {
              scf.yield %false : i1
            }
            %53 = arith.extsi %52 : i1 to i32
            call @eassert_func(%49, %53) : (!llvm.ptr<i8>, i32) -> ()
            %54 = memref.get_global @N_array : memref<16307x16307xi32>
            %55 = affine.load %54[-%arg2 + symbol(%4) - 1, %arg3] : memref<16307x16307xi32>
            %56 = llvm.mlir.addressof @str5 : !llvm.ptr<array<49 x i8>>
            %57 = llvm.getelementptr %56[%c0_i32, %c0_i32] : (!llvm.ptr<array<49 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %58 = affine.if #set3(%arg2)[%4] -> i1 {
              %64 = arith.cmpi slt, %39, %3 : i32
              affine.yield %64 : i1
            } else {
              affine.yield %false : i1
            }
            %59 = scf.if %58 -> (i1) {
              %64 = arith.cmpi sle, %c0_i32, %43 : i32
              scf.yield %64 : i1
            } else {
              scf.yield %false : i1
            }
            %60 = scf.if %59 -> (i1) {
              %64 = arith.cmpi slt, %43, %3 : i32
              scf.yield %64 : i1
            } else {
              scf.yield %false : i1
            }
            %61 = arith.extsi %60 : i1 to i32
            call @eassert_func(%57, %61) : (!llvm.ptr<i8>, i32) -> ()
            %62 = affine.load %54[-%arg2 + symbol(%4), %arg3 - 1] : memref<16307x16307xi32>
            %63 = call @max_score(%55, %62) : (i32, i32) -> i32
            affine.store %63, %54[-%arg2 + symbol(%4) - 1, %arg3] : memref<16307x16307xi32>
          }
        }
        %45 = scf.if %40 -> (i1) {
          %48 = arith.cmpi sle, %c0_i32, %42 : i32
          scf.yield %48 : i1
        } else {
          scf.yield %false : i1
        }
        %46 = scf.if %45 -> (i1) {
          %48 = arith.cmpi slt, %42, %3 : i32
          scf.yield %48 : i1
        } else {
          scf.yield %false : i1
        }
        %47 = arith.extsi %46 : i1 to i32
        affine.for %arg4 = #map1(%arg2)[%4] to #map2(%arg3) {
          %48 = arith.index_cast %arg4 : index to i32
          %49 = llvm.mlir.addressof @str4 : !llvm.ptr<array<41 x i8>>
          %50 = llvm.getelementptr %49[%c0_i32, %c0_i32] : (!llvm.ptr<array<41 x i8>>, i32, i32) -> !llvm.ptr<i8>
          call @eassert_func(%50, %47) : (!llvm.ptr<i8>, i32) -> ()
          %51 = affine.load %17[-%arg2 + symbol(%4) - 1, %arg3] : memref<16307x16307xi32>
          %52 = llvm.mlir.addressof @str6 : !llvm.ptr<array<41 x i8>>
          %53 = llvm.getelementptr %52[%c0_i32, %c0_i32] : (!llvm.ptr<array<41 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %54 = scf.if %41 -> (i1) {
            %68 = arith.cmpi sle, %c0_i32, %48 : i32
            scf.yield %68 : i1
          } else {
            scf.yield %false : i1
          }
          %55 = scf.if %54 -> (i1) {
            %68 = arith.cmpi slt, %48, %3 : i32
            scf.yield %68 : i1
          } else {
            scf.yield %false : i1
          }
          %56 = arith.extsi %55 : i1 to i32
          call @eassert_func(%53, %56) : (!llvm.ptr<i8>, i32) -> ()
          %57 = affine.load %17[-%arg2 + symbol(%4) - 1, %arg4] : memref<16307x16307xi32>
          %58 = llvm.mlir.addressof @str7 : !llvm.ptr<array<45 x i8>>
          %59 = llvm.getelementptr %58[%c0_i32, %c0_i32] : (!llvm.ptr<array<45 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %60 = arith.addi %48, %c1_i32 : i32
          %61 = affine.if #set4(%arg4) -> i1 {
            %68 = arith.cmpi slt, %60, %3 : i32
            affine.yield %68 : i1
          } else {
            affine.yield %false : i1
          }
          %62 = scf.if %61 -> (i1) {
            %68 = arith.cmpi sle, %c0_i32, %42 : i32
            scf.yield %68 : i1
          } else {
            scf.yield %false : i1
          }
          %63 = scf.if %62 -> (i1) {
            %68 = arith.cmpi slt, %42, %3 : i32
            scf.yield %68 : i1
          } else {
            scf.yield %false : i1
          }
          %64 = arith.extsi %63 : i1 to i32
          call @eassert_func(%59, %64) : (!llvm.ptr<i8>, i32) -> ()
          %65 = affine.load %17[%arg4 + 1, %arg3] : memref<16307x16307xi32>
          %66 = arith.addi %57, %65 : i32
          %67 = call @max_score(%51, %66) : (i32, i32) -> i32
          affine.store %67, %17[-%arg2 + symbol(%4) - 1, %arg3] : memref<16307x16307xi32>
        }
      }
    }
    %18 = call @cur_time() : () -> f64
    %19 = llvm.mlir.addressof @str8 : !llvm.ptr<array<25 x i8>>
    %20 = llvm.getelementptr %19[%c0_i32, %c0_i32] : (!llvm.ptr<array<25 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %21 = arith.subf %18, %15 : f64
    %22 = llvm.call @printf(%20, %21) : (!llvm.ptr<i8>, f64) -> i32
    %23 = llvm.mlir.addressof @str9 : !llvm.ptr<array<19 x i8>>
    %24 = llvm.getelementptr %23[%c0_i32, %c0_i32] : (!llvm.ptr<array<19 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %25 = llvm.mlir.addressof @str10 : !llvm.ptr<array<51 x i8>>
    %26 = llvm.getelementptr %25[%c0_i32, %c0_i32] : (!llvm.ptr<array<51 x i8>>, i32, i32) -> !llvm.ptr<i8>
    %27 = arith.cmpi slt, %c0_i32, %3 : i32
    %28 = scf.if %27 -> (i1) {
      %37 = arith.addi %3, %c-1_i32 : i32
      %38 = arith.cmpi sle, %c0_i32, %37 : i32
      scf.yield %38 : i1
    } else {
      scf.yield %false : i1
    }
    %29 = scf.if %28 -> (i1) {
      %37 = arith.addi %3, %c-1_i32 : i32
      %38 = arith.cmpi slt, %37, %3 : i32
      scf.yield %38 : i1
    } else {
      scf.yield %false : i1
    }
    %30 = arith.extsi %29 : i1 to i32
    call @eassert_func(%26, %30) : (!llvm.ptr<i8>, i32) -> ()
    %31 = memref.get_global @N_array : memref<16307x16307xi32>
    %32 = affine.load %31[0, symbol(%6) - 1] : memref<16307x16307xi32>
    %33 = llvm.call @printf(%24, %32) : (!llvm.ptr<i8>, i32) -> i32
    %34 = arith.cmpi sle, %3, %c48_i32 : i32
    scf.if %34 {
      %37 = arith.index_cast %3 : i32 to index
      scf.for %arg2 = %c0 to %37 step %c1 {
        %42 = llvm.mlir.addressof @str11 : !llvm.ptr<array<5 x i8>>
        %43 = llvm.getelementptr %42[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %44 = llvm.mlir.addressof @base_print : !llvm.ptr<array<4 x ptr<i8>>>
        %45 = llvm.getelementptr %44[%c0_i32, %c0_i32] : (!llvm.ptr<array<4 x ptr<i8>>>, i32, i32) -> !llvm.ptr<ptr<i8>>
        %46 = memref.get_global @seq : memref<16307xi32>
        %47 = memref.load %46[%arg2] : memref<16307xi32>
        %48 = arith.index_cast %47 : i32 to index
        %49 = arith.index_cast %48 : index to i64
        %50 = llvm.getelementptr %45[%49] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
        %51 = llvm.load %50 : !llvm.ptr<ptr<i8>>
        %52 = llvm.call @printf(%43, %51) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      }
      %38 = llvm.mlir.addressof @str12 : !llvm.ptr<array<2 x i8>>
      %39 = llvm.getelementptr %38[%c0_i32, %c0_i32] : (!llvm.ptr<array<2 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %40 = llvm.call @printf(%39) : (!llvm.ptr<i8>) -> i32
      %41 = arith.index_cast %3 : i32 to index
      scf.for %arg2 = %c0 to %41 step %c1 {
        %42 = arith.index_cast %3 : i32 to index
        scf.for %arg3 = %c0 to %42 step %c1 {
          %46 = llvm.mlir.addressof @str13 : !llvm.ptr<array<5 x i8>>
          %47 = llvm.getelementptr %46[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
          %48 = memref.get_global @N_array : memref<16307x16307xi32>
          %49 = memref.load %48[%arg2, %arg3] : memref<16307x16307xi32>
          %50 = llvm.call @printf(%47, %49) : (!llvm.ptr<i8>, i32) -> i32
        }
        %43 = llvm.mlir.addressof @str12 : !llvm.ptr<array<2 x i8>>
        %44 = llvm.getelementptr %43[%c0_i32, %c0_i32] : (!llvm.ptr<array<2 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %45 = llvm.call @printf(%44) : (!llvm.ptr<i8>) -> i32
      }
    }
    %35 = llvm.mlir.addressof @str14 : !llvm.ptr<array<8 x i8>>
    %36 = llvm.getelementptr %35[%c0_i32, %c0_i32] : (!llvm.ptr<array<8 x i8>>, i32, i32) -> !llvm.ptr<i8>
    call @eassert_func(%36, %c-1_i32) : (!llvm.ptr<i8>, i32) -> ()
    return %c0_i32 : i32
  }
  func @getint(%arg0: !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %false = arith.constant false
    %c-1_i32 = arith.constant -1 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %1 = llvm.mlir.undef : i32
    %2 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i8>>
    %4 = llvm.mlir.addressof @str12 : !llvm.ptr<array<2 x i8>>
    %5 = llvm.getelementptr %4[%c0_i32, %c0_i32] : (!llvm.ptr<array<2 x i8>>, i32, i32) -> !llvm.ptr<i8>
    llvm.store %5, %2 : !llvm.ptr<ptr<i8>>
    %6 = llvm.mlir.undef : i32
    %7 = llvm.mlir.undef : i32
    %8:2 = scf.while (%arg1 = %6, %arg2 = %7) : (i32, i32) -> (i32, i32) {
      %11 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %12 = llvm.load %11 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %13 = llvm.mlir.addressof @str15 : !llvm.ptr<array<5 x i8>>
      %14 = llvm.getelementptr %13[%c0_i32, %c0_i32] : (!llvm.ptr<array<5 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %15 = llvm.call @fprintf(%12, %14, %arg0, %5) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %16 = llvm.mlir.addressof @str16 : !llvm.ptr<array<3 x i8>>
      %17 = llvm.getelementptr %16[%c0_i32, %c0_i32] : (!llvm.ptr<array<3 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %18 = llvm.call @__isoc99_scanf(%17, %0) : (!llvm.ptr<i8>, !llvm.ptr<i32>) -> i32
      %19 = llvm.load %0 : !llvm.ptr<i32>
      %20 = arith.cmpi ne, %18, %c1_i32 : i32
      %21 = scf.if %20 -> (i1) {
        %22 = arith.cmpi ne, %18, %c-1_i32 : i32
        scf.yield %22 : i1
      } else {
        scf.yield %false : i1
      }
      scf.condition(%21) %18, %19 : i32, i32
    } do {
    ^bb0(%arg1: i32, %arg2: i32):  // no predecessors
      %11 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %12 = llvm.load %11 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %13 = llvm.mlir.addressof @str17 : !llvm.ptr<array<36 x i8>>
      %14 = llvm.getelementptr %13[%c0_i32, %c0_i32] : (!llvm.ptr<array<36 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %15 = llvm.call @fprintf(%12, %14) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
      scf.yield %arg1, %arg2 : i32, i32
    }
    %9 = arith.cmpi eq, %8#0, %c1_i32 : i32
    %10 = scf.if %9 -> (i32) {
      scf.yield %8#1 : i32
    } else {
      %11 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %12 = llvm.load %11 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %13 = llvm.mlir.addressof @str18 : !llvm.ptr<array<32 x i8>>
      %14 = llvm.getelementptr %13[%c0_i32, %c0_i32] : (!llvm.ptr<array<32 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %15 = llvm.call @fprintf(%12, %14) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>) -> i32
      call @exit(%c1_i32) : (i32) -> ()
      scf.yield %1 : i32
    }
    return %10 : i32
  }
  func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func private @srand(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func private @rand() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func @cur_time() -> f64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 9.9999999999999995E-7 : f64
    %0 = memref.alloca() : memref<1x2xi32>
    %1 = memref.alloca() : memref<1x2xi64>
    %2 = "polygeist.memref2pointer"(%1) : (memref<1x2xi64>) -> !llvm.ptr<struct<(i64, i64)>>
    %3 = "polygeist.memref2pointer"(%0) : (memref<1x2xi32>) -> !llvm.ptr<struct<(i32, i32)>>
    %4 = llvm.call @gettimeofday(%2, %3) : (!llvm.ptr<struct<(i64, i64)>>, !llvm.ptr<struct<(i32, i32)>>) -> i32
    %5 = affine.load %1[0, 0] : memref<1x2xi64>
    %6 = arith.sitofp %5 : i64 to f64
    %7 = affine.load %1[0, 1] : memref<1x2xi64>
    %8 = arith.sitofp %7 : i64 to f64
    %9 = arith.mulf %8, %cst : f64
    %10 = arith.addf %6, %9 : f64
    return %10 : f64
  }
  func @eassert_func(%arg0: !llvm.ptr<i8>, %arg1: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %true = arith.constant true
    %0 = arith.trunci %arg1 : i32 to i1
    %1 = arith.xori %0, %true : i1
    scf.if %1 {
      %2 = llvm.mlir.addressof @stderr : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %3 = llvm.load %2 : !llvm.ptr<ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>>
      %4 = llvm.mlir.addressof @str19 : !llvm.ptr<array<22 x i8>>
      %5 = llvm.getelementptr %4[%c0_i32, %c0_i32] : (!llvm.ptr<array<22 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %6 = llvm.call @fprintf(%3, %5, %arg0) : (!llvm.ptr<struct<(i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<()>>, ptr<struct<()>>, ptr<struct<"struct._IO_FILE", (i32, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<i8>, ptr<struct<"struct._IO_marker", opaque>>, ptr<struct<"struct._IO_FILE">>, i32, i32, i64, i16, i8, array<1 x i8>, ptr<i8>, i64, ptr<struct<"struct._IO_codecvt", opaque>>, ptr<struct<"struct._IO_wide_data", opaque>>, ptr<struct<"struct._IO_FILE">>, ptr<i8>, i64, i32, array<20 x i8>)>>, ptr<i8>, i64, i32, array<20 x i8>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      call @exit(%c1_i32) : (i32) -> ()
    }
    return
  }
  func @max_score(%arg0: i32, %arg1: i32) -> i32 attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = arith.cmpi sge, %arg0, %arg1 : i32
    %1 = select %0, %arg0, %arg1 : i32
    return %1 : i32
  }
  func @match(%arg0: i32, %arg1: i32) -> i32 attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c3_i32 = arith.constant 3 : i32
    %0 = arith.addi %arg0, %arg1 : i32
    %1 = arith.cmpi eq, %0, %c3_i32 : i32
    %2 = select %1, %c1_i32, %c0_i32 : i32
    return %2 : i32
  }
}
