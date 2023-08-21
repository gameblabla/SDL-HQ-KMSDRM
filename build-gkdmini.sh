#!/bin/sh
rm -r build-gkd
mkdir build-gkd
cd build-gkd
cmake -DCMAKE_TOOLCHAIN_FILE="/opt/gkdminiplus-toolchain/usr/share/buildroot/toolchainfile.cmake" -DCMAKE_BUILD_TYPE=Release -DFORCE_GLES="ON" -DCMAKE_C_FLAGS_RELEASE="-O2 -DFORCEGLES_HACK=1" -DCMAKE_CXX_FLAGS_RELEASE="-O2 -DFORCEGLES_HACK=1" -DCMAKE_EXE_LINKER_FLAGS="-s" -DCMAKE_INTERPROCEDURAL_OPTIMIZATION="TRUE" ..
make -j8
cd ..
