#!/bin/bash

path="$1/gen"

echo -e "Converting kernels..."

for filename in $(find $path/kernel/* -name '*.mlir'); do
    bname="$(basename $filename .mlir)"
    fname="$bname.mlir"
    sdir-opt --convert-to-sdir $filename -o "$path/kernel_sdir/$fname" &> /dev/null || echo -e "   \u274c $bname failed"

done

echo -ne "\r\e[K"
echo -e "\u2705 Kernels converted!"
