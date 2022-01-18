#!/bin/bash

path="$1/gen"
bpath="$1/build"

echo -ne "Compiling drivers..."

for filename in $(find $path/driver_llvm/* -name '*.ll'); do
    bname="$(basename $filename .ll)"
    fname="$bname.o"
    llc -relocation-model=pic --filetype=obj $filename -o "$bpath/driver/orig/$fname"
done

echo -ne "\r\e[K"
echo -e "\u2705 Drivers compiled!"
echo -ne "Compiling kernels..."

for filename in $(find $path/kernel_llvm/* -name '*.ll'); do
    bname="$(basename $filename .ll)"
    fname="$bname.o"
    llc -O3 -march=x86-64 -relocation-model=pic -filetype=obj $filename -o "$bpath/kernel/mlir/$fname"
done

echo -ne "\r\e[K"
echo -e "\u2705 Kernels compiled!"
