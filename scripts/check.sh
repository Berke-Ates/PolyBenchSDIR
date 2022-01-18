#!/bin/bash

path="$1/bin"

echo -e "Checking MLIR kernels..."

for filename in $(find $path/mlir/* -name '*.out'); do
  bname="$(basename $filename .out)"
  echo -e "   checking $bname"
  ./$filename || echo -e "\u274c $bname failed"
done

echo -e "\u2705 MLIR check done!"

echo -e "Checking SDFG kernels..."

for filename in $(find $path/sdfg/* -name '*.out'); do
  bname="$(basename $filename .out)"
  echo -e "   checking $bname"
  ./$filename || echo -e "\u274c $bname failed"
done

echo -e "\u2705 SDFG check done!"
