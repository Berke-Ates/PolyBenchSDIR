#!/bin/bash

path="$1/gen"
bpath="$1/build"

echo -ne "Compiling renamed drivers..."

for filename in $(find $path/driver_llvm/* -name '*.ll'); do
    bname="$(basename $filename .ll)"
    fname="$bname.o"
    llc -relocation-model=pic --filetype=obj $filename -o "$bpath/driver/renamed/$fname"
done

echo -ne "\r\e[K"
echo -e "\u2705 Renamed drivers compiled!"

