#!/bin/bash

path=$1

rm -rf $path/bin
rm -rf $path/build
rm -rf $path/gen
rm -rf $path/logs

mkdir -p $path/logs

mkdir -p $path/bin/mlir
mkdir -p $path/bin/sdfg
mkdir -p $path/bin/clang

mkdir -p $path/build/driver/orig
mkdir -p $path/build/driver/renamed
mkdir -p $path/build/kernel/mlir
mkdir -p $path/build/kernel/sdfg

mkdir -p $path/gen/driver
mkdir -p $path/gen/driver_llvm
mkdir -p $path/gen/full
mkdir -p $path/gen/full_lowered
mkdir -p $path/gen/kernel
mkdir -p $path/gen/kernel_llvm
mkdir -p $path/gen/kernel_sdir
mkdir -p $path/gen/kernel_sdfg
mkdir -p $path/gen/kernel_sdfg_valid

echo -e "\u2705 Cleared!"
