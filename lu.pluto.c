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
/* lu.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>

/* Include benchmark-specific header. */
#include "lu.h"


/* Array initialization. */
static
void init_array (int n,
		 DATA_TYPE POLYBENCH_2D(A,N,N,n,n))
{
  int i, j;

  for (i = 0; i < n; i++)
    {
      for (j = 0; j <= i; j++)
	A[i][j] = (DATA_TYPE)(-j % n) / n + 1;
      for (j = i+1; j < n; j++) {
	A[i][j] = 0;
      }
      A[i][i] = 1;
    }

  /* Make the matrix positive semi-definite. */
  /* not necessary for LU, but using same code as cholesky */
  int r,s,t;
  POLYBENCH_2D_ARRAY_DECL(B, DATA_TYPE, N, N, n, n);
  for (r = 0; r < n; ++r)
    for (s = 0; s < n; ++s)
      (POLYBENCH_ARRAY(B))[r][s] = 0;
  for (t = 0; t < n; ++t)
    for (r = 0; r < n; ++r)
      for (s = 0; s < n; ++s)
	(POLYBENCH_ARRAY(B))[r][s] += A[r][t] * A[s][t];
    for (r = 0; r < n; ++r)
      for (s = 0; s < n; ++s)
	A[r][s] = (POLYBENCH_ARRAY(B))[r][s];
  POLYBENCH_FREE_ARRAY(B);

}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int n,
		 DATA_TYPE POLYBENCH_2D(A,N,N,n,n))

{
  int i, j;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("A");
  for (i = 0; i < n; i++)
    for (j = 0; j < n; j++) {
      if ((i * n + j) % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
      fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, A[i][j]);
    }
  POLYBENCH_DUMP_END("A");
  POLYBENCH_DUMP_FINISH;
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_lu(int n,
	       DATA_TYPE POLYBENCH_2D(A,N,N,n,n))
{
  int i, j, k;

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
  int t1, t2, t3;
 register int lbv, ubv;
/* Start of CLooG code */
if (_PB_N >= 2) {
  A[1][0] /= A[0][0];;
  for (t3=1;t3<=_PB_N-1;t3++) {
    A[1][t3] -= A[1][0] * A[0][t3];;
  }
  for (t1=2;t1<=_PB_N-1;t1++) {
    for (t2=0;t2<=t1-2;t2++) {
      A[t1][t2] /= A[t2][t2];;
      for (t3=t2+1;t3<=t1-1;t3++) {
        A[t1][t3] -= A[t1][t2] * A[t2][t3];;
      }
      for (t3=t1;t3<=_PB_N-1;t3++) {
        A[t1][t3] -= A[t1][t2] * A[t2][t3];;
      }
    }
    A[t1][(t1-1)] /= A[(t1-1)][(t1-1)];;
    for (t3=t1;t3<=_PB_N-1;t3++) {
      A[t1][t3] -= A[t1][(t1-1)] * A[(t1-1)][t3];;
    }
  }
}
/* End of CLooG code */
}


int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);

  /* Initialize array(s). */
  init_array (n, POLYBENCH_ARRAY(A));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_lu (n, POLYBENCH_ARRAY(A));

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

// CHECK:   #map = affine_map<(d0) -> (d0)>
// CHECK:   func @kernel_lu(%arg0: i32, %arg1: memref<2000x2000xf64>) {
// CHECK-NEXT:     %0 = index_cast %arg0 : i32 to index
// CHECK-NEXT:     affine.for %arg2 = 0 to %0 {
// CHECK-NEXT:       affine.for %arg3 = 0 to #map(%arg2) {
// CHECK-NEXT:         %1 = affine.load %arg1[%arg2, %arg3] : memref<2000x2000xf64>
// CHECK-NEXT:         affine.for %arg4 = 0 to #map(%arg3) {
// CHECK-NEXT:           %5 = affine.load %arg1[%arg2, %arg4] : memref<2000x2000xf64>
// CHECK-NEXT:           %6 = affine.load %arg1[%arg4, %arg3] : memref<2000x2000xf64>
// CHECK-NEXT:           %7 = mulf %5, %6 : f64
// CHECK-NEXT:           %8 = subf %1, %7 : f64
// CHECK-NEXT:           affine.store %8, %arg1[%arg2, %arg3] : memref<2000x2000xf64>
// CHECK-NEXT:         }
// CHECK-NEXT:         %2 = affine.load %arg1[%arg3, %arg3] : memref<2000x2000xf64>
// CHECK-NEXT:         %3 = affine.load %arg1[%arg2, %arg3] : memref<2000x2000xf64>
// CHECK-NEXT:         %4 = divf %3, %2 : f64
// CHECK-NEXT:         affine.store %4, %arg1[%arg2, %arg3] : memref<2000x2000xf64>
// CHECK-NEXT:       }
// CHECK-NEXT:       affine.for %arg3 = #map(%arg2) to %0 {
// CHECK-NEXT:         %1 = affine.load %arg1[%arg2, %arg3] : memref<2000x2000xf64>
// CHECK-NEXT:         affine.for %arg4 = 0 to #map(%arg2) {
// CHECK-NEXT:           %2 = affine.load %arg1[%arg2, %arg4] : memref<2000x2000xf64>
// CHECK-NEXT:           %3 = affine.load %arg1[%arg4, %arg3] : memref<2000x2000xf64>
// CHECK-NEXT:           %4 = mulf %2, %3 : f64
// CHECK-NEXT:           %5 = subf %1, %4 : f64
// CHECK-NEXT:           affine.store %5, %arg1[%arg2, %arg3] : memref<2000x2000xf64>
// CHECK-NEXT:         }
// CHECK-NEXT:       }
// CHECK-NEXT:     }
// CHECK-NEXT:     return
// CHECK-NEXT:   }

// EXEC: {{[0-9]\.[0-9]+}}
