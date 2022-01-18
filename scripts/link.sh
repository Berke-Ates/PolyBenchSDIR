#!/bin/bash

path="$1/build"
bpath="$1/bin"

echo -ne "Linking MLIR kernels & drivers"

for filename in $(find $path/kernel/mlir/* -name '*.o'); do
    bname="$(basename $filename .o)"
    fname="$bname.out"
    dpath="$path/driver/orig/$bname.o"
    /bin/clang -O3 -flto -lm --target=x86_64-linux $dpath $filename -o "$bpath/mlir/$fname"
done

echo -ne "\r\e[K"
echo -e "\u2705 MLIR linked!"

echo -ne "Linking SDFG kernels & drivers"

for filename in $(find $path/kernel/sdfg/* -name '*.o'); do
    bname="$(basename $filename .o)"
    fname="$bname.out"
    dpath="$path/driver/renamed/$bname.o"
    sname=${bname//-/_}
    # NOTE: hard coded path
    libpath=".dacecache/kernel_$sname/build/"
    /bin/clang -O3 -flto -lm -Wl,-rpath=$libpath --target=x86_64-linux $dpath $filename -o "$bpath/sdfg/$fname"
done

echo -ne "\r\e[K"
echo -e "\u2705 SDFG linked!"
