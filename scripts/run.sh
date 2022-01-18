#!/bin/bash

# Needs: 
# PolyGeist (with LLVM, MLIR and Clang)
# DaCe 
# MLIR-DaCe 
# llc
# dart
# Add the binaries to PATH 

# Paths to root folder & PolyGeist
path=".idea/eval"
poly=".idea/eval/Polygeist"

$path/scripts/clear.sh $path
$path/scripts/gen_poly.sh $path $poly

dart $path/scripts/extract_kernel.dart $path

$path/scripts/lower.sh $path
dart $path/scripts/rename_kernel.dart $path
$path/scripts/compile.sh $path


$path/scripts/convert.sh $path
$path/scripts/translate.sh $path

dart $path/scripts/rename_driver.dart $path
$path/scripts/compile_renamed.sh $path

$path/scripts/compile_sdfg.sh $path

$path/scripts/link.sh $path
$path/scripts/check.sh $path

