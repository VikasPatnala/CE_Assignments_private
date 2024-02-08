#!/bin/bash

INP_DIR=./data_structs/inp/
OUT_DIR=./data_structs/out/

CLANG=../../llvm-project/build/bin/clang
CLANGPP=../../llvm-project/build/bin/clang++
OPT_DIR=../../llvm-project/build/bin/opt

mkdir -p $OUT_DIR

files=("array.cpp" "vector.cpp" "struct.cpp" "union.cpp" "class.cpp" "ternaryOpp.cpp")

for file in ${files[@]}; do
    PATH=$INP_DIR/$file

    if [ -e "$PATH" ]; then
        name="${file%.*}"

        # Generating LLVM-IR
        $CLANGPP -S -emit-llvm $PATH -o $OUT_DIR/$name.ll
    else
        echo "File not found: $PATH"
    fi
done