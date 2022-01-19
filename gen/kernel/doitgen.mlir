  func private @kernel_doitgen(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: memref<?x140x160xf64>, %arg4: memref<?x160xf64>, %arg5: memref<?xf64>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = arith.index_cast %arg1 : i32 to index
    %1 = arith.index_cast %arg2 : i32 to index
    %2 = arith.index_cast %arg2 : i32 to index
    %3 = arith.index_cast %arg0 : i32 to index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg6 = %c0 to %3 step %c1 {
      %c0_0 = arith.constant 0 : index
      %c1_1 = arith.constant 1 : index
      scf.for %arg7 = %c0_0 to %0 step %c1_1 {
        %c0_2 = arith.constant 0 : index
        %c1_3 = arith.constant 1 : index
        scf.for %arg8 = %c0_2 to %1 step %c1_3 {
          memref.store %cst, %arg5[%arg8] : memref<?xf64>
          %c0_6 = arith.constant 0 : index
          %c1_7 = arith.constant 1 : index
          scf.for %arg9 = %c0_6 to %1 step %c1_7 {
            %4 = memref.load %arg3[%arg6, %arg7, %arg9] : memref<?x140x160xf64>
            %5 = memref.load %arg4[%arg9, %arg8] : memref<?x160xf64>
            %6 = arith.mulf %4, %5 : f64
            %7 = memref.load %arg5[%arg8] : memref<?xf64>
            %8 = arith.addf %7, %6 : f64
            memref.store %8, %arg5[%arg8] : memref<?xf64>
          }
        }
        %c0_4 = arith.constant 0 : index
        %c1_5 = arith.constant 1 : index
        scf.for %arg8 = %c0_4 to %2 step %c1_5 {
          %4 = memref.load %arg5[%arg8] : memref<?xf64>
          memref.store %4, %arg3[%arg6, %arg7, %arg8] : memref<?x140x160xf64>
        }
      }
    }
    return
  }
