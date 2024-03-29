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
/* gesummv.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>

/* Include benchmark-specific header. */
#include "gesummv.h"


/* Array initialization. */
static
void init_array(int n,
		DATA_TYPE *alpha,
		DATA_TYPE *beta,
		DATA_TYPE POLYBENCH_2D(A,N,N,n,n),
		DATA_TYPE POLYBENCH_2D(B,N,N,n,n),
		DATA_TYPE POLYBENCH_1D(x,N,n))
{
  int i, j;

  *alpha = 1.5;
  *beta = 1.2;
  for (i = 0; i < n; i++)
    {
      x[i] = (DATA_TYPE)( i % n) / n;
      for (j = 0; j < n; j++) {
	A[i][j] = (DATA_TYPE) ((i*j+1) % n) / n;
	B[i][j] = (DATA_TYPE) ((i*j+2) % n) / n;
      }
    }
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int n,
		 DATA_TYPE POLYBENCH_1D(y,N,n))

{
  int i;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("y");
  for (i = 0; i < n; i++) {
    if (i % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
    fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, y[i]);
  }
  POLYBENCH_DUMP_END("y");
  POLYBENCH_DUMP_FINISH;
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
static
void kernel_gesummv(int n,
		    DATA_TYPE alpha,
		    DATA_TYPE beta,
		    DATA_TYPE POLYBENCH_2D(A,N,N,n,n),
		    DATA_TYPE POLYBENCH_2D(B,N,N,n,n),
		    DATA_TYPE POLYBENCH_1D(tmp,N,n),
		    DATA_TYPE POLYBENCH_1D(x,N,n),
		    DATA_TYPE POLYBENCH_1D(y,N,n))
{
  int i, j;

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
if (_PB_N >= 1) {
  lbv=0;
  ubv=_PB_N-1;
#pragma ivdep
#pragma vector always
  for (t2=lbv;t2<=ubv;t2++) {
    y[t2] = SCALAR_VAL(0.0);;
  }
  for (t2=0;t2<=_PB_N-1;t2++) {
    for (t3=0;t3<=_PB_N-1;t3++) {
      y[t2] = B[t2][t3] * x[t3] + y[t2];;
    }
  }
  lbv=0;
  ubv=_PB_N-1;
#pragma ivdep
#pragma vector always
  for (t2=lbv;t2<=ubv;t2++) {
    tmp[t2] = SCALAR_VAL(0.0);;
  }
  for (t2=0;t2<=_PB_N-1;t2++) {
    for (t3=0;t3<=_PB_N-1;t3++) {
      tmp[t2] = A[t2][t3] * x[t3] + tmp[t2];;
    }
  }
  lbv=0;
  ubv=_PB_N-1;
#pragma ivdep
#pragma vector always
  for (t2=lbv;t2<=ubv;t2++) {
    y[t2] = alpha * tmp[t2] + beta * y[t2];;
  }
}
/* End of CLooG code */

}


int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int n = N;

  /* Variable declaration/allocation. */
  DATA_TYPE alpha;
  DATA_TYPE beta;
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);
  POLYBENCH_2D_ARRAY_DECL(B, DATA_TYPE, N, N, n, n);
  POLYBENCH_1D_ARRAY_DECL(tmp, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(x, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, N, n);


  /* Initialize array(s). */
  init_array (n, &alpha, &beta,
	      POLYBENCH_ARRAY(A),
	      POLYBENCH_ARRAY(B),
	      POLYBENCH_ARRAY(x));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_gesummv (n, alpha, beta,
		  POLYBENCH_ARRAY(A),
		  POLYBENCH_ARRAY(B),
		  POLYBENCH_ARRAY(tmp),
		  POLYBENCH_ARRAY(x),
		  POLYBENCH_ARRAY(y));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(y)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(B);
  POLYBENCH_FREE_ARRAY(tmp);
  POLYBENCH_FREE_ARRAY(x);
  POLYBENCH_FREE_ARRAY(y);

  return 0;
}

// CHECK: func @kernel_gesummv(%arg0: i32, %arg1: f64, %arg2: f64, %arg3: memref<1300x1300xf64>, %arg4: memref<1300x1300xf64>, %arg5: memref<1300xf64>, %arg6: memref<1300xf64>, %arg7: memref<1300xf64>) {
// CHECK-NEXT:  %cst = constant 0.000000e+00 : f64
// CHECK-NEXT:  %0 = index_cast %arg0 : i32 to index
// CHECK-NEXT:  affine.for %arg8 = 0 to %0 {
// CHECK-NEXT:    affine.store %cst, %arg5[%arg8] : memref<1300xf64>
// CHECK-NEXT:    affine.store %cst, %arg7[%arg8] : memref<1300xf64>
// CHECK-NEXT:    %1 = affine.load %arg5[%arg8] : memref<1300xf64>
// CHECK-NEXT:    %2 = affine.load %arg7[%arg8] : memref<1300xf64>
// CHECK-NEXT:    affine.for %arg9 = 0 to %0 {
// CHECK-NEXT:      %8 = affine.load %arg3[%arg8, %arg9] : memref<1300x1300xf64>
// CHECK-NEXT:      %9 = affine.load %arg6[%arg9] : memref<1300xf64>
// CHECK-NEXT:      %10 = mulf %8, %9 : f64
// CHECK-NEXT:      %11 = addf %10, %1 : f64
// CHECK-NEXT:      affine.store %11, %arg5[%arg8] : memref<1300xf64>
// CHECK-NEXT:      %12 = affine.load %arg4[%arg8, %arg9] : memref<1300x1300xf64>
// CHECK-NEXT:      %13 = affine.load %arg6[%arg9] : memref<1300xf64>
// CHECK-NEXT:      %14 = mulf %12, %13 : f64
// CHECK-NEXT:      %15 = addf %14, %2 : f64
// CHECK-NEXT:      affine.store %15, %arg7[%arg8] : memref<1300xf64>
// CHECK-NEXT:    }
// CHECK-NEXT:    %3 = affine.load %arg5[%arg8] : memref<1300xf64>
// CHECK-NEXT:    %4 = mulf %arg1, %3 : f64
// CHECK-NEXT:    %5 = affine.load %arg7[%arg8] : memref<1300xf64>
// CHECK-NEXT:    %6 = mulf %arg2, %5 : f64
// CHECK-NEXT:    %7 = addf %4, %6 : f64
// CHECK-NEXT:    affine.store %7, %arg7[%arg8] : memref<1300xf64>
// CHECK-NEXT:  }
// CHECK-NEXT:  return
// CHECK-NEXT: }

// EXEC: {{[0-9]\.[0-9]+}}
