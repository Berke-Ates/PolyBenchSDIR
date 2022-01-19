#!/bin/bash

# Needs: 
# Polygeist (with LLVM, MLIR and Clang)
# DaCe 
# MLIR-DaCe 
# llc
# dart
# Add the binaries to PATH 

# Paths to root folder & Polygeist
path="."
poly="./Polygeist"

$path/scripts/clear.sh $path
$path/scripts/gen_poly.sh $path $poly

$path/scripts/bin/extract_kernel.exe $path

$path/scripts/lower.sh $path
$path/scripts/bin/rename_kernel.exe $path
$path/scripts/compile.sh $path


$path/scripts/convert.sh $path
$path/scripts/translate.sh $path

$path/scripts/bin/rename_driver.exe $path
$path/scripts/compile_renamed.sh $path

$path/scripts/compile_sdfg.sh $path

$path/scripts/link.sh $path
#$path/scripts/check.sh $path

# $path/scripts/sdir_benchmark.sh $path
