#!/bin/bash
XTRAFLAGS="-Wno-unknown-pragmas -Wno-missing-braces -Wno-unused-result -Wno-return-type -Wno-int-to-pointer-cast -Wno-parentheses -Wno-unused -Wno-unused-but-set-variable -Wno-cpp -P"
export CCFLAGS="-fno-strict-aliasing $XTRAFLAGS"
export CC=gcc
./bin/package
./bin/package make mamake ||:
./bin/package make mamake ||:
./bin/package make -S
