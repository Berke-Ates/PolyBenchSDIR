#include <math.h>
#define ceild(n,d)  ceil(((double)(n))/((double)(d)))
#define floord(n,d) floor(((double)(n))/((double)(d)))
#define max(x,y)    ((x) > (y)? (x) : (y))
#define min(x,y)    ((x) < (y)? (x) : (y))

// RUN: mlir-clang %s %stdinclude -S | FileCheck %s
// RUN: clang %s -O3 %stdinclude %polyverify -o %s.exec1 && %s.exec1 &> %s.out1
// RUN: mlir-clang %s %polyverify %stdinclude -O3 -o %s.execm && %s.execm &> %s.out2
// RUN: rm -f %s.exec1 %s.execm
// RUN: diff %s.out1 %s.out2
// RUN: rm -f %s.out1 %s.out2
// RUN: mlir-clang %s %polyexec %stdinclude -O3 -o %s.execm && %s.execm > %s.mlir.time; cat %s.mlir.time | FileCheck %s --check-prefix EXEC
// RUN: clang %s -O3 %polyexec %stdinclude -o %s.exec2 && %s.exec2 > %s.clang.time; cat %s.clang.time | FileCheck %s --check-prefix EXEC
// RUN: rm -f %s.exec2 %s.execm
// RUN: mlir-clang -raise-scf-to-affine %s %stdinclude -S | FileCheck %s

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
/* 2mm.c: this file is part of PolyBench/C */

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>

/* Include benchmark-specific header. */
#include "2mm.h"


/* Array initialization. */
static
void init_array(int ni, int nj, int nk, int nl,
		DATA_TYPE *alpha,
		DATA_TYPE *beta,
		DATA_TYPE POLYBENCH_2D(A,NI,NK,ni,nk),
		DATA_TYPE POLYBENCH_2D(B,NK,NJ,nk,nj),
		DATA_TYPE POLYBENCH_2D(C,NJ,NL,nj,nl),
		DATA_TYPE POLYBENCH_2D(D,NI,NL,ni,nl))
{
  int i, j;

  *alpha = 1.5;
  *beta = 1.2;
  for (i = 0; i < ni; i++)
    for (j = 0; j < nk; j++)
      A[i][j] = (DATA_TYPE) ((i*j+1) % ni) / ni;
  for (i = 0; i < nk; i++)
    for (j = 0; j < nj; j++)
      B[i][j] = (DATA_TYPE) (i*(j+1) % nj) / nj;
  for (i = 0; i < nj; i++)
    for (j = 0; j < nl; j++)
      C[i][j] = (DATA_TYPE) ((i*(j+3)+1) % nl) / nl;
  for (i = 0; i < ni; i++)
    for (j = 0; j < nl; j++)
      D[i][j] = (DATA_TYPE) (i*(j+2) % nk) / nk;
}


/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static
void print_array(int ni, int nl,
		 DATA_TYPE POLYBENCH_2D(D,NI,NL,ni,nl))
{
  int i, j;

  POLYBENCH_DUMP_START;
  POLYBENCH_DUMP_BEGIN("D");
  for (i = 0; i < ni; i++)
    for (j = 0; j < nl; j++) {
	if ((i * ni + j) % 20 == 0) fprintf (POLYBENCH_DUMP_TARGET, "\n");
	fprintf (POLYBENCH_DUMP_TARGET, DATA_PRINTF_MODIFIER, D[i][j]);
    }
  POLYBENCH_DUMP_END("D");
  POLYBENCH_DUMP_FINISH;
}


/* Main computational kernel. The whole function will be timed,
   including the call and return. */
void kernel_2mm(int ni, int nj, int nk, int nl,
		DATA_TYPE alpha,
		DATA_TYPE beta,
		DATA_TYPE POLYBENCH_2D(tmp,NI,NJ,ni,nj),
		DATA_TYPE POLYBENCH_2D(A,NI,NK,ni,nk),
		DATA_TYPE POLYBENCH_2D(B,NK,NJ,nk,nj),
		DATA_TYPE POLYBENCH_2D(C,NJ,NL,nj,nl),
		DATA_TYPE POLYBENCH_2D(D,NI,NL,ni,nl))
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
  int t1, t2, t3, t4, t5;
 register int lbv, ubv;
/* Start of CLooG code */
if (_PB_NI >= 1) {
  if ((_PB_NJ >= _PB_NL+1) && (_PB_NL >= 1)) {
    for (t2=0;t2<=_PB_NI-1;t2++) {
      lbv=0;
      ubv=_PB_NL-1;
#pragma ivdep
#pragma vector always
      for (t3=lbv;t3<=ubv;t3++) {
        D[t2][t3] *= beta;;
        tmp[t2][t3] = SCALAR_VAL(0.0);;
      }
      lbv=_PB_NL;
      ubv=_PB_NJ-1;
#pragma ivdep
#pragma vector always
      for (t3=lbv;t3<=ubv;t3++) {
        tmp[t2][t3] = SCALAR_VAL(0.0);;
      }
    }
  }
  if ((_PB_NJ >= 1) && (_PB_NJ <= _PB_NL-1)) {
    for (t2=0;t2<=_PB_NI-1;t2++) {
      lbv=0;
      ubv=_PB_NJ-1;
#pragma ivdep
#pragma vector always
      for (t3=lbv;t3<=ubv;t3++) {
        D[t2][t3] *= beta;;
        tmp[t2][t3] = SCALAR_VAL(0.0);;
      }
      lbv=_PB_NJ;
      ubv=_PB_NL-1;
#pragma ivdep
#pragma vector always
      for (t3=lbv;t3<=ubv;t3++) {
        D[t2][t3] *= beta;;
      }
    }
  }
  if ((_PB_NJ >= 1) && (_PB_NJ == _PB_NL)) {
    for (t2=0;t2<=_PB_NI-1;t2++) {
      lbv=0;
      ubv=_PB_NJ-1;
#pragma ivdep
#pragma vector always
      for (t3=lbv;t3<=ubv;t3++) {
        D[t2][t3] *= beta;;
        tmp[t2][t3] = SCALAR_VAL(0.0);;
      }
    }
  }
  if ((_PB_NJ >= 1) && (_PB_NL <= 0)) {
    for (t2=0;t2<=_PB_NI-1;t2++) {
      lbv=0;
      ubv=_PB_NJ-1;
#pragma ivdep
#pragma vector always
      for (t3=lbv;t3<=ubv;t3++) {
        tmp[t2][t3] = SCALAR_VAL(0.0);;
      }
    }
  }
  if ((_PB_NJ <= 0) && (_PB_NL >= 1)) {
    for (t2=0;t2<=_PB_NI-1;t2++) {
      lbv=0;
      ubv=_PB_NL-1;
#pragma ivdep
#pragma vector always
      for (t3=lbv;t3<=ubv;t3++) {
        D[t2][t3] *= beta;;
      }
    }
  }
  if ((_PB_NJ >= 1) && (_PB_NK >= 1) && (_PB_NL >= 1)) {
    for (t2=0;t2<=_PB_NI-1;t2++) {
      for (t3=0;t3<=_PB_NJ-1;t3++) {
        for (t5=0;t5<=_PB_NK-1;t5++) {
          tmp[t2][t3] += alpha * A[t2][t5] * B[t5][t3];;
        }
        lbv=0;
        ubv=_PB_NL-1;
#pragma ivdep
#pragma vector always
        for (t5=lbv;t5<=ubv;t5++) {
          D[t2][t5] += tmp[t2][t3] * C[t3][t5];;
        }
      }
    }
  }
  if ((_PB_NJ >= 1) && (_PB_NK >= 1) && (_PB_NL <= 0)) {
    for (t2=0;t2<=_PB_NI-1;t2++) {
      for (t3=0;t3<=_PB_NJ-1;t3++) {
        for (t5=0;t5<=_PB_NK-1;t5++) {
          tmp[t2][t3] += alpha * A[t2][t5] * B[t5][t3];;
        }
      }
    }
  }
  if ((_PB_NJ >= 1) && (_PB_NK <= 0) && (_PB_NL >= 1)) {
    for (t2=0;t2<=_PB_NI-1;t2++) {
      for (t3=0;t3<=_PB_NJ-1;t3++) {
        lbv=0;
        ubv=_PB_NL-1;
#pragma ivdep
#pragma vector always
        for (t5=lbv;t5<=ubv;t5++) {
          D[t2][t5] += tmp[t2][t3] * C[t3][t5];;
        }
      }
    }
  }
}
/* End of CLooG code */

}


int main(int argc, char** argv)
{
  /* Retrieve problem size. */
  int ni = NI;
  int nj = NJ;
  int nk = NK;
  int nl = NL;

  /* Variable declaration/allocation. */
  DATA_TYPE alpha;
  DATA_TYPE beta;
  POLYBENCH_2D_ARRAY_DECL(tmp,DATA_TYPE,NI,NJ,ni,nj);
  POLYBENCH_2D_ARRAY_DECL(A,DATA_TYPE,NI,NK,ni,nk);
  POLYBENCH_2D_ARRAY_DECL(B,DATA_TYPE,NK,NJ,nk,nj);
  POLYBENCH_2D_ARRAY_DECL(C,DATA_TYPE,NJ,NL,nj,nl);
  POLYBENCH_2D_ARRAY_DECL(D,DATA_TYPE,NI,NL,ni,nl);

  /* Initialize array(s). */
  init_array (ni, nj, nk, nl, &alpha, &beta,
	      POLYBENCH_ARRAY(A),
	      POLYBENCH_ARRAY(B),
	      POLYBENCH_ARRAY(C),
	      POLYBENCH_ARRAY(D));

  /* Start timer. */
  polybench_start_instruments;

  /* Run kernel. */
  kernel_2mm (ni, nj, nk, nl,
	      alpha, beta,
	      POLYBENCH_ARRAY(tmp),
	      POLYBENCH_ARRAY(A),
	      POLYBENCH_ARRAY(B),
	      POLYBENCH_ARRAY(C),
	      POLYBENCH_ARRAY(D));

  /* Stop and print timer. */
  polybench_stop_instruments;
  polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(ni, nl,  POLYBENCH_ARRAY(D)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(tmp);
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(B);
  POLYBENCH_FREE_ARRAY(C);
  POLYBENCH_FREE_ARRAY(D);

  return 0;
}
// CHECK:  @kernel_2mm
// CHECK:  affine.for %arg11 = 0 to {{.*}} {
// CHECK:    affine.for %arg12 = 0 to {{.*}} {
// CHECK:      affine.store %cst, %arg6[%arg11, %arg12] : memref<?x900xf64>
// CHECK:      affine.for %arg13 = 0 to {{.*}} {
// CHECK:        %4 = affine.load %arg7[%arg11, %arg13] : memref<?x1100xf64>
// CHECK:        %5 = arith.mulf %arg4, %4 : f64
// CHECK:        %6 = affine.load %arg8[%arg13, %arg12] : memref<?x900xf64>
// CHECK:        %7 = arith.mulf %5, %6 : f64
// CHECK:        %8 = affine.load %arg6[%arg11, %arg12] : memref<?x900xf64>
// CHECK:        %9 = arith.addf %8, %7 : f64
// CHECK:        affine.store %9, %arg6[%arg11, %arg12] : memref<?x900xf64>
// CHECK:      }
// CHECK:    }
// CHECK:  }
// CHECK:  affine.for %arg11 = 0 to {{.*}} {
// CHECK:    affine.for %arg12 = 0 to {{.*}} {
// CHECK:      %4 = affine.load %arg10[%arg11, %arg12] : memref<?x1200xf64>
// CHECK:      %5 = arith.mulf %4, %arg5 : f64
// CHECK:      affine.store %5, %arg10[%arg11, %arg12] : memref<?x1200xf64>
// CHECK:      affine.for %arg13 = 0 to {{.*}} {
// CHECK:      %6 = affine.load %arg6[%arg11, %arg13] : memref<?x900xf64> 
// CHECK:      %7 = affine.load %arg9[%arg13, %arg12] : memref<?x1200xf64>
// CHECK:      %8 = arith.mulf %6, %7 : f64
// CHECK:      %9 = affine.load %arg10[%arg11, %arg12] : memref<?x1200xf64>
// CHECK:      %10 = arith.addf %9, %8 : f64
// CHECK:      affine.store %10, %arg10[%arg11, %arg12] : memref<?x1200xf64>
// CHECK:      }
// CHECK:    }
// CHECK:  }
// CHECK:  return
// CHECK: }

// EXEC: {{[0-9]\.[0-9]+}}
