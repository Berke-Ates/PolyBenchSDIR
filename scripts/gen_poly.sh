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
    clang=$poly/build/bin/mlir-clang
    incl=$poly/tools/mlir-clang/Test/polybench/utilities/
    bname="$(basename $filename .c)"
    fname="$bname.out"
    $clang $filename -I $incl --O3 -o=$1bin/clang/$fname
done

echo -ne "\r\e[K"
echo -e "\u2705 Generation done!"
