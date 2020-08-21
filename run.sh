#! /bin/sh
nasm -f machos64 $@.asm
ld -macosx_version_min 10.15.0 -lSystem -o $@ $@.o
