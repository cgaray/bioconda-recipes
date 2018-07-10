#!/bin/bash

sh autogen.sh

# needed on macos:
export LDFLAGS="$LDFLAGS -L$PREFIX/lib"
export CXXFLAGS="$CXXFLAGS -I$PREFIX/include"
export LIBRARY_PATH=${PREFIX}/lib

./configure --prefix=$PREFIX

make -j $CPU_COUNT
make install
