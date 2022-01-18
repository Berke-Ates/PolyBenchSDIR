#!/bin/bash

path="$1/gen"

echo -ne "Lowering drivers..."

for filename in $(find $path/driver/* -name '*.mlir'); do
    bname="$(basename $filename .mlir)"
    fname="$bname.ll"
    mlir-opt --convert-math-to-llvm --convert-scf-to-std --lower-host-to-llvm $filename | mlir-translate --mlir-to-llvmir -o "$path/driver_llvm/$fname"
done

echo -ne "\r\e[K"
echo -e "\u2705 Drivers lowered!"
echo -ne "Lowering kernels..."

for filename in $(find $path/kernel/* -name '*.mlir'); do
    bname="$(basename $filename .mlir)"
    fname="$bname.ll"
    mlir-opt --convert-math-to-llvm --convert-scf-to-std --lower-host-to-llvm $filename | mlir-translate --mlir-to-llvmir -o "$path/kernel_llvm/$fname" 
done

echo -ne "\r\e[K"
echo -e "\u2705 Kernels lowered!"
