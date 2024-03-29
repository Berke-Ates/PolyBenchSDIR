#include <math.h>
#define ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define floord(n,d) floor(((double)(n))/((double)(d)))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))

// TODO: mlir-clang %s %stdinclude -S | FileCheck %s
// RUN: clang %s -O3 %stdinclude %polyverify -o %s.exec1 && %s.exec1 &> %s.out1
// RUN: mlir-clang %s %polyverify %stdinclude -O3 -o %s.execm && %s.execm &> %s.out2
// RUN: rm -f %s.exec1 %s.execm
// RUN: diff %s.out1 %s.out2
// RUN: rm -f %s.out1 %s.out2
// RUN: mlir-clang %s %polyexec %stdinclude -O3 -o %s.execm && %s.execm > %s.mlir.time; cat %s.mlir.time | FileCheck %s --check-prefix EXEC
// RUN: clang %s -O3 %polyexec %stdinclude -o %s.exec2 && %s.exec2 > %s.clang.time; cat %s.clang.time | FileCheck %s --check-prefix EXEC
// RUN: rm -f %s.exec2 %s.execm

// RUN: clang %s -O3 %stdinclude %polyverify -o %s.exec1 && %s.exec1 &> %s.out1
// RUN: mlir-clang %s %polyverify %stdinclude -detect-reduction -O3 -o %s.execm && %s.execm &> %s.out2
// RUN: rm -f %s.exec1 %s.execm
// RUN: diff %s.out1 %s.out2
// RUN: rm -f %s.out1 %s.out2

/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
/* heat-3d.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>

/* Include benchmark-specific header. */
#include "heat-3d.h"


/* Array initialization. */
static
void init_array (int n,
		 DATA_TYPE POLYBENCH_3D(A,N,N,N,n,n,n),
		 DATA_TYPE POLYBENCH_3D(B,N,N,N,n,n,n))
{
  int i, j, k;

  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      for (k = 0; k < n; k++)
        A[i][j][k] = B[i][j][k] = (DATA_TYPE) (i + j + (n-k))* 10 / (n);
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int n,
		 DATA_TYPE POLYBENCH_3D(A,N,N,N,n,n,n))

{
  int i, j, k;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("A");
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++)
      for (k = 0; k < n; k++) {
         if ((i * n * n + j * n + k) % 20 == 0) fprintf(POLYBENCH_DUMP_TARGET, "\n");
         fprintf(POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, A[i][j][k]);
      }
  POLYBENCH_DUMP_END("A");
  POLYBENCH_DUMP_FINISH;
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_heat_3d(int tsteps,
		      int n,
		      DATA_TYPE POLYBENCH_3D(A,N,N,N,n,n,n),
		      DATA_TYPE POLYBENCH_3D(B,N,N,N,n,n,n))
{
  int t, i, j, k;

/* Copyright (C) 1991-2018 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
  int t1, t2, t3, t4;
 register int lbv, ubv;
/* Start of CLooG code */
if ((TSTEPS >= 1) && (_PB_N >= 3)) {
  if (_PB_N >= 4) {
    for (t1=1;t1<=TSTEPS;t1++) {
      for (t3=2*t1+1;t3<=2*t1+_PB_N-2;t3++) {
        lbv=2*t1+1;
        ubv=2*t1+_PB_N-2;
#pragma ivdep
#pragma vector always
        for (t4=lbv;t4<=ubv;t4++) {
          B[1][(-2*t1+t3)][(-2*t1+t4)] = SCALAR_VAL(0.125) * (A[1 +1][(-2*t1+t3)][(-2*t1+t4)] - SCALAR_VAL(2.0) * A[1][(-2*t1+t3)][(-2*t1+t4)] + A[1 -1][(-2*t1+t3)][(-2*t1+t4)]) + SCALAR_VAL(0.125) * (A[1][(-2*t1+t3)+1][(-2*t1+t4)] - SCALAR_VAL(2.0) * A[1][(-2*t1+t3)][(-2*t1+t4)] + A[1][(-2*t1+t3)-1][(-2*t1+t4)]) + SCALAR_VAL(0.125) * (A[1][(-2*t1+t3)][(-2*t1+t4)+1] - SCALAR_VAL(2.0) * A[1][(-2*t1+t3)][(-2*t1+t4)] + A[1][(-2*t1+t3)][(-2*t1+t4)-1]) + A[1][(-2*t1+t3)][(-2*t1+t4)];;
        }
      }
      for (t2=2*t1+2;t2<=2*t1+_PB_N-2;t2++) {
        lbv=2*t1+1;
        ubv=2*t1+_PB_N-2;
#pragma ivdep
#pragma vector always
        for (t4=lbv;t4<=ubv;t4++) {
          B[(-2*t1+t2)][1][(-2*t1+t4)] = SCALAR_VAL(0.125) * (A[(-2*t1+t2)+1][1][(-2*t1+t4)] - SCALAR_VAL(2.0) * A[(-2*t1+t2)][1][(-2*t1+t4)] + A[(-2*t1+t2)-1][1][(-2*t1+t4)]) + SCALAR_VAL(0.125) * (A[(-2*t1+t2)][1 +1][(-2*t1+t4)] - SCALAR_VAL(2.0) * A[(-2*t1+t2)][1][(-2*t1+t4)] + A[(-2*t1+t2)][1 -1][(-2*t1+t4)]) + SCALAR_VAL(0.125) * (A[(-2*t1+t2)][1][(-2*t1+t4)+1] - SCALAR_VAL(2.0) * A[(-2*t1+t2)][1][(-2*t1+t4)] + A[(-2*t1+t2)][1][(-2*t1+t4)-1]) + A[(-2*t1+t2)][1][(-2*t1+t4)];;
        }
        for (t3=2*t1+2;t3<=2*t1+_PB_N-2;t3++) {
          B[(-2*t1+t2)][(-2*t1+t3)][1] = SCALAR_VAL(0.125) * (A[(-2*t1+t2)+1][(-2*t1+t3)][1] - SCALAR_VAL(2.0) * A[(-2*t1+t2)][(-2*t1+t3)][1] + A[(-2*t1+t2)-1][(-2*t1+t3)][1]) + SCALAR_VAL(0.125) * (A[(-2*t1+t2)][(-2*t1+t3)+1][1] - SCALAR_VAL(2.0) * A[(-2*t1+t2)][(-2*t1+t3)][1] + A[(-2*t1+t2)][(-2*t1+t3)-1][1]) + SCALAR_VAL(0.125) * (A[(-2*t1+t2)][(-2*t1+t3)][1 +1] - SCALAR_VAL(2.0) * A[(-2*t1+t2)][(-2*t1+t3)][1] + A[(-2*t1+t2)][(-2*t1+t3)][1 -1]) + A[(-2*t1+t2)][(-2*t1+t3)][1];;
          lbv=2*t1+2;
          ubv=2*t1+_PB_N-2;
#pragma ivdep
#pragma vector always
          for (t4=lbv;t4<=ubv;t4++) {
            B[(-2*t1+t2)][(-2*t1+t3)][(-2*t1+t4)] = SCALAR_VAL(0.125) * (A[(-2*t1+t2)+1][(-2*t1+t3)][(-2*t1+t4)] - SCALAR_VAL(2.0) * A[(-2*t1+t2)][(-2*t1+t3)][(-2*t1+t4)] + A[(-2*t1+t2)-1][(-2*t1+t3)][(-2*t1+t4)]) + SCALAR_VAL(0.125) * (A[(-2*t1+t2)][(-2*t1+t3)+1][(-2*t1+t4)] - SCALAR_VAL(2.0) * A[(-2*t1+t2)][(-2*t1+t3)][(-2*t1+t4)] + A[(-2*t1+t2)][(-2*t1+t3)-1][(-2*t1+t4)]) + SCALAR_VAL(0.125) * (A[(-2*t1+t2)][(-2*t1+t3)][(-2*t1+t4)+1] - SCALAR_VAL(2.0) * A[(-2*t1+t2)][(-2*t1+t3)][(-2*t1+t4)] + A[(-2*t1+t2)][(-2*t1+t3)][(-2*t1+t4)-1]) + A[(-2*t1+t2)][(-2*t1+t3)][(-2*t1+t4)];;
            A[(-2*t1+t2-1)][(-2*t1+t3-1)][(-2*t1+t4-1)] = SCALAR_VAL(0.125) * (B[(-2*t1+t2-1)+1][(-2*t1+t3-1)][(-2*t1+t4-1)] - SCALAR_VAL(2.0) * B[(-2*t1+t2-1)][(-2*t1+t3-1)][(-2*t1+t4-1)] + B[(-2*t1+t2-1)-1][(-2*t1+t3-1)][(-2*t1+t4-1)]) + SCALAR_VAL(0.125) * (B[(-2*t1+t2-1)][(-2*t1+t3-1)+1][(-2*t1+t4-1)] - SCALAR_VAL(2.0) * B[(-2*t1+t2-1)][(-2*t1+t3-1)][(-2*t1+t4-1)] + B[(-2*t1+t2-1)][(-2*t1+t3-1)-1][(-2*t1+t4-1)]) + SCALAR_VAL(0.125) * (B[(-2*t1+t2-1)][(-2*t1+t3-1)][(-2*t1+t4-1)+1] - SCALAR_VAL(2.0) * B[(-2*t1+t2-1)][(-2*t1+t3-1)][(-2*t1+t4-1)] + B[(-2*t1+t2-1)][(-2*t1+t3-1)][(-2*t1+t4-1)-1]) + B[(-2*t1+t2-1)][(-2*t1+t3-1)][(-2*t1+t4-1)];;
          }
          A[(-2*t1+t2-1)][(-2*t1+t3-1)][(_PB_N-2)] = SCALAR_VAL(0.125) * (B[(-2*t1+t2-1)+1][(-2*t1+t3-1)][(_PB_N-2)] - SCALAR_VAL(2.0) * B[(-2*t1+t2-1)][(-2*t1+t3-1)][(_PB_N-2)] + B[(-2*t1+t2-1)-1][(-2*t1+t3-1)][(_PB_N-2)]) + SCALAR_VAL(0.125) * (B[(-2*t1+t2-1)][(-2*t1+t3-1)+1][(_PB_N-2)] - SCALAR_VAL(2.0) * B[(-2*t1+t2-1)][(-2*t1+t3-1)][(_PB_N-2)] + B[(-2*t1+t2-1)][(-2*t1+t3-1)-1][(_PB_N-2)]) + SCALAR_VAL(0.125) * (B[(-2*t1+t2-1)][(-2*t1+t3-1)][(_PB_N-2)+1] - SCALAR_VAL(2.0) * B[(-2*t1+t2-1)][(-2*t1+t3-1)][(_PB_N-2)] + B[(-2*t1+t2-1)][(-2*t1+t3-1)][(_PB_N-2)-1]) + B[(-2*t1+t2-1)][(-2*t1+t3-1)][(_PB_N-2)];;
        }
        lbv=2*t1+2;
        ubv=2*t1+_PB_N-1;
#pragma ivdep
#pragma vector always
        for (t4=lbv;t4<=ubv;t4++) {
          A[(-2*t1+t2-1)][(_PB_N-2)][(-2*t1+t4-1)] = SCALAR_VAL(0.125) * (B[(-2*t1+t2-1)+1][(_PB_N-2)][(-2*t1+t4-1)] - SCALAR_VAL(2.0) * B[(-2*t1+t2-1)][(_PB_N-2)][(-2*t1+t4-1)] + B[(-2*t1+t2-1)-1][(_PB_N-2)][(-2*t1+t4-1)]) + SCALAR_VAL(0.125) * (B[(-2*t1+t2-1)][(_PB_N-2)+1][(-2*t1+t4-1)] - SCALAR_VAL(2.0) * B[(-2*t1+t2-1)][(_PB_N-2)][(-2*t1+t4-1)] + B[(-2*t1+t2-1)][(_PB_N-2)-1][(-2*t1+t4-1)]) + SCALAR_VAL(0.125) * (B[(-2*t1+t2-1)][(_PB_N-2)][(-2*t1+t4-1)+1] - SCALAR_VAL(2.0) * B[(-2*t1+t2-1)][(_PB_N-2)][(-2*t1+t4-1)] + B[(-2*t1+t2-1)][(_PB_N-2)][(-2*t1+t4-1)-1]) + B[(-2*t1+t2-1)][(_PB_N-2)][(-2*t1+t4-1)];;
        }
      }
      for (t3=2*t1+2;t3<=2*t1+_PB_N-1;t3++) {
        lbv=2*t1+2;
        ubv=2*t1+_PB_N-1;
#pragma ivdep
#pragma vector always
        for (t4=lbv;t4<=ubv;t4++) {
          A[(_PB_N-2)][(-2*t1+t3-1)][(-2*t1+t4-1)] = SCALAR_VAL(0.125) * (B[(_PB_N-2)+1][(-2*t1+t3-1)][(-2*t1+t4-1)] - SCALAR_VAL(2.0) * B[(_PB_N-2)][(-2*t1+t3-1)][(-2*t1+t4-1)] + B[(_PB_N-2)-1][(-2*t1+t3-1)][(-2*t1+t4-1)]) + SCALAR_VAL(0.125) * (B[(_PB_N-2)][(-2*t1+t3-1)+1][(-2*t1+t4-1)] - SCALAR_VAL(2.0) * B[(_PB_N-2)][(-2*t1+t3-1)][(-2*t1+t4-1)] + B[(_PB_N-2)][(-2*t1+t3-1)-1][(-2*t1+t4-1)]) + SCALAR_VAL(0.125) * (B[(_PB_N-2)][(-2*t1+t3-1)][(-2*t1+t4-1)+1] - SCALAR_VAL(2.0) * B[(_PB_N-2)][(-2*t1+t3-1)][(-2*t1+t4-1)] + B[(_PB_N-2)][(-2*t1+t3-1)][(-2*t1+t4-1)-1]) + B[(_PB_N-2)][(-2*t1+t3-1)][(-2*t1+t4-1)];;
        }
      }
    }
  }
  if (_PB_N == 3) {
    for (t1=1;t1<=TSTEPS;t1++) {
      B[1][1][1] = SCALAR_VAL(0.125) * (A[1 +1][1][1] - SCALAR_VAL(2.0) * A[1][1][1] + A[1 -1][1][1]) + SCALAR_VAL(0.125) * (A[1][1 +1][1] - SCALAR_VAL(2.0) * A[1][1][1] + A[1][1 -1][1]) + SCALAR_VAL(0.125) * (A[1][1][1 +1] - SCALAR_VAL(2.0) * A[1][1][1] + A[1][1][1 -1]) + A[1][1][1];;
      A[1][1][1] = SCALAR_VAL(0.125) * (B[1 +1][1][1] - SCALAR_VAL(2.0) * B[1][1][1] + B[1 -1][1][1]) + SCALAR_VAL(0.125) * (B[1][1 +1][1] - SCALAR_VAL(2.0) * B[1][1][1] + B[1][1 -1][1]) + SCALAR_VAL(0.125) * (B[1][1][1 +1] - SCALAR_VAL(2.0) * B[1][1][1] + B[1][1][1 -1]) + B[1][1][1];;
    }
  }
}
/* End of CLooG code */

}


int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;
  int tsteps = TSTEPS;

  /* Variable declaration/allocation. */
  POLYBENCH_3D_ARRAY_DECL(A, DATA_TYPE, N, N, N, n, n, n);
  POLYBENCH_3D_ARRAY_DECL(B, DATA_TYPE, N, N, N, n, n, n);


  /* Initialize array(s). */
  init_array (n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_heat_3d (tsteps, n, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(B));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(A)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);

  return 0;
}

// CHECK: #map = affine_map<()[s0] -> (s0 - 1)>

// CHECK:   func private @kernel_heat_3d(%arg0: i32, %arg1: i32, %arg2: memref<120x120x120xf64>, %arg3: memref<120x120x120xf64>) {
// CHECK-NEXT:    %cst = constant 1.250000e-01 : f64
// CHECK-NEXT:    %cst_0 = constant 2.000000e+00 : f64
// CHECK-NEXT:    %0 = index_cast %arg1 : i32 to index
// CHECK-NEXT:    affine.for %arg4 = 1 to 501 {
// CHECK-NEXT:      affine.for %arg5 = 1 to #map()[%0] {
// CHECK-NEXT:        affine.for %arg6 = 1 to #map()[%0] {
// CHECK-NEXT:          affine.for %arg7 = 1 to #map()[%0] {
// CHECK-NEXT:            %1 = affine.load %arg2[%arg5 + 1, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %2 = affine.load %arg2[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %3 = mulf %cst_0, %2 : f64
// CHECK-NEXT:            %4 = subf %1, %3 : f64
// CHECK-NEXT:            %5 = affine.load %arg2[%arg5 - 1, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %6 = addf %4, %5 : f64
// CHECK-NEXT:            %7 = mulf %cst, %6 : f64
// CHECK-NEXT:            %8 = affine.load %arg2[%arg5, %arg6 + 1, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %9 = affine.load %arg2[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %10 = mulf %cst_0, %9 : f64
// CHECK-NEXT:            %11 = subf %8, %10 : f64
// CHECK-NEXT:            %12 = affine.load %arg2[%arg5, %arg6 - 1, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %13 = addf %11, %12 : f64
// CHECK-NEXT:            %14 = mulf %cst, %13 : f64
// CHECK-NEXT:            %15 = addf %7, %14 : f64
// CHECK-NEXT:            %16 = affine.load %arg2[%arg5, %arg6, %arg7 + 1] : memref<120x120x120xf64>
// CHECK-NEXT:            %17 = affine.load %arg2[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %18 = mulf %cst_0, %17 : f64
// CHECK-NEXT:            %19 = subf %16, %18 : f64
// CHECK-NEXT:            %20 = affine.load %arg2[%arg5, %arg6, %arg7 - 1] : memref<120x120x120xf64>
// CHECK-NEXT:            %21 = addf %19, %20 : f64
// CHECK-NEXT:            %22 = mulf %cst, %21 : f64
// CHECK-NEXT:            %23 = addf %15, %22 : f64
// CHECK-NEXT:            %24 = affine.load %arg2[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %25 = addf %23, %24 : f64
// CHECK-NEXT:            affine.store %25, %arg3[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:          }
// CHECK-NEXT:        }
// CHECK-NEXT:      }
// CHECK-NEXT:      affine.for %arg5 = 1 to #map()[%0] {
// CHECK-NEXT:        affine.for %arg6 = 1 to #map()[%0] {
// CHECK-NEXT:          affine.for %arg7 = 1 to #map()[%0] {
// CHECK-NEXT:            %1 = affine.load %arg3[%arg5 + 1, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %2 = affine.load %arg3[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %3 = mulf %cst_0, %2 : f64
// CHECK-NEXT:            %4 = subf %1, %3 : f64
// CHECK-NEXT:            %5 = affine.load %arg3[%arg5 - 1, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %6 = addf %4, %5 : f64
// CHECK-NEXT:            %7 = mulf %cst, %6 : f64
// CHECK-NEXT:            %8 = affine.load %arg3[%arg5, %arg6 + 1, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %9 = affine.load %arg3[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %10 = mulf %cst_0, %9 : f64
// CHECK-NEXT:            %11 = subf %8, %10 : f64
// CHECK-NEXT:            %12 = affine.load %arg3[%arg5, %arg6 - 1, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %13 = addf %11, %12 : f64
// CHECK-NEXT:            %14 = mulf %cst, %13 : f64
// CHECK-NEXT:            %15 = addf %7, %14 : f64
// CHECK-NEXT:            %16 = affine.load %arg3[%arg5, %arg6, %arg7 + 1] : memref<120x120x120xf64>
// CHECK-NEXT:            %17 = affine.load %arg3[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %18 = mulf %cst_0, %17 : f64
// CHECK-NEXT:            %19 = subf %16, %18 : f64
// CHECK-NEXT:            %20 = affine.load %arg3[%arg5, %arg6, %arg7 - 1] : memref<120x120x120xf64>
// CHECK-NEXT:            %21 = addf %19, %20 : f64
// CHECK-NEXT:            %22 = mulf %cst, %21 : f64
// CHECK-NEXT:            %23 = addf %15, %22 : f64
// CHECK-NEXT:            %24 = affine.load %arg3[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:            %25 = addf %23, %24 : f64
// CHECK-NEXT:            affine.store %25, %arg2[%arg5, %arg6, %arg7] : memref<120x120x120xf64>
// CHECK-NEXT:          }
// CHECK-NEXT:        }
// CHECK-NEXT:      }
// CHECK-NEXT:    }
// CHECK-NEXT:    return
// CHECK-NEXT:  }

// EXEC: {{[0-9]\.[0-9]+}}
