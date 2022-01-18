#!/bin/bash

path="$1/gen"

echo -e "Compiling SDFGs..."

for filename in $(find $path/kernel_sdfg/* -name '*.sdfg'); do
    bname="$(basename $filename .sdfg)"
    fname="$bname.sdfg"
    oname="$bname.o"
    python $1/scripts/sdfg_compiler.py $filename "$path/kernel_sdfg_valid/$fname" "$1/build/kernel/sdfg/$oname" &> /dev/null || echo -e "   \u274c $bname failed"
done

echo -ne "\r\e[K"
echo -e "\u2705 SDFGs compiled!"
