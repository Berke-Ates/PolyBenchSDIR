#!/bin/bash

path="$1/gen"

echo -ne "Translating kernels..."

for filename in $(find $path/kernel_sdir/* -name '*.mlir'); do
    bname="$(basename $filename .mlir)"
    fname="$bname.sdfg"
    sdir-translate --mlir-to-sdfg $filename -o "$path/kernel_sdfg/$fname" &> /dev/null || echo -e "   \u274c $bname failed"
done

echo -ne "\r\e[K"
echo -e "\u2705 Kernels translated!"
