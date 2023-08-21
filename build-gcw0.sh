#!/bin/sh
rm -r build
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE="/opt/gcw0-toolchain/usr/share/buildroot/toolchainfile.cmake" -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_FLAGS_RELEASE="-O2 -fdata-sections -ffunction-sections" -DCMAKE_CXX_FLAGS_RELEASE="-O2 -fdata-sections -ffunction-sections" -DCMAKE_EXE_LINKER_FLAGS="-s -Wl,--as-needed -Wl,--gc-sections -flto " -DCMAKE_INTERPROCEDURAL_OPTIMIZATION="TRUE" -DSDL_LIBSAMPLERATE=0 ..
make -j8
cd ..
