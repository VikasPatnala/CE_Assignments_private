#!/bin/bash

INP_DIR=./inp
OUT_DIR=./outs

CLANG=../../llvm-project/build/bin/clang
CLANGPP=../../llvm-project/build/bin/clang++
OPT=../../llvm-project/build/bin/opt

mkdir -p $OUT_DIR
mkdir -p $OUT_DIR/lls/
mkdir -p $OUT_DIR/O1/
mkdir -p $OUT_DIR/O2/
mkdir -p $OUT_DIR/O3/
mkdir -p $OUT_DIR/Os/
mkdir -p $OUT_DIR/Oz/
mkdir -p $OUT_DIR/dce/


files=("file1.cpp" "file2.cpp" "file3.cpp" "file4.cpp" "file5.cpp")

for file in ${files[@]}; do
    PATH=$INP_DIR/$file

    if [ -e "$PATH" ]; then
        name="${file%.*}"

        $CLANGPP -S -Xclang -disable-O0-optnone -emit-llvm $PATH -o $OUT_DIR/lls/$name.ll

        $CLANGPP -O1 -S -emit-llvm $PATH -o $OUT_DIR/O1/$name.ll
        
        $CLANGPP -O2 -S -emit-llvm $PATH -o $OUT_DIR/O2/$name.ll
        
        $CLANGPP -O3 -S -emit-llvm $PATH -o $OUT_DIR/O3/$name.ll
        
        $CLANGPP -Os -S -emit-llvm $PATH -o $OUT_DIR/Os/$name.ll
        
        $CLANGPP -Oz -S -emit-llvm $PATH -o $OUT_DIR/Oz/$name.ll

        # running the dead code elimination pass
        $OPT -p mem2reg,dce -S $OUT_DIR/lls/$name.ll -o $OUT_DIR/dce/$name.ll

    else
        echo "File not found: $PATH"
    fi
done