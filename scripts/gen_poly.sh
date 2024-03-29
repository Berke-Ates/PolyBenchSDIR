#!/bin/bash

path="$1/gen"
poly=$2

echo -ne "Generating kernels..."

for filename in $(find $poly/tools/mlir-clang/Test/polybench/* -name '*.c' -not -path "$poly/tools/mlir-clang/Test/polybench/utilities/*"); do
    clang=$poly/build/bin/mlir-clang
    incl=$poly/tools/mlir-clang/Test/polybench/utilities/
    bname="$(basename $filename .c)"
    fname="$bname.mlir"
    $clang $filename -I $incl -S --O0 -o=$path/full/$fname && mlir-opt --lower-affine $path/full/$fname -o=$path/full_lowered/$fname 
done

for filename in $(find $poly/tools/mlir-clang/Test/polybench/* -name '*.c' -not -path "$poly/tools/mlir-clang/Test/polybench/utilities/*"); do
    mlir-clang=$poly/build/bin/mlir-clang
    incl=$poly/tools/mlir-clang/Test/polybench/utilities/
    polyC=$poly/tools/mlir-clang/Test/polybench/utilities/polybench.c
    bname="$(basename $filename .c)"
    fname="$bname.out"
    $mlir-clang $filename $polyC -DPOLYBENCH_TIME -I $incl --O3 -o=$1/bin/clang/$fname
    /scratch/talbn/llvm-project/build/bin/clang -O3 -march=native -mllvm -polly -mllvm -polly-parallel -lgomp -DUSE_MPI=0 -lm $polyC $filename -I $incl -DPOLYBENCH_TIME -o $1/bin/pollypar/$fname
    /scratch/talbn/llvm-project/build/bin/clang -mllvm -polly -lgomp -DUSE_MPI=0 -lm $polyC $filename -I $incl -DPOLYBENCH_TIME -o $1/bin/polly/$fname
    gcc -O3 -march=native $polyC $filename -I $incl -DPOLYBENCH_TIME  -o $1/bin/gcc/$fname
    /users/talbn/pluto-0.11.4/polycc --parallel $filename; gcc -O3 -fopenmp -march=native $polyC $bname.pluto.c -I $incl -I`dirname $filename` -DPOLYBENCH_TIME -o $1/bin/plutopar/$fname	
    /users/talbn/pluto-0.11.4/polycc $filename; gcc -O3 -march=native $polyC $bname.pluto.c -I $incl -I`dirname $filename` -DPOLYBENCH_TIME -o $1/bin/pluto/$fname
done




echo -ne "\r\e[K"
echo -e "\u2705 Generation done!"
