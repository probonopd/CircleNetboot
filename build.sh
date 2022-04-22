#!/bin/bash

set -e 
set -x

if [ -z "${RPI}" ] ; then
  echo "\$RPI missing, exting"
  exit 1
fi

if [ "${RPI}" -gt "2" ]; then
    export TOOLCHAIN_PREFIX="aarch64-none-elf-"
else
    export TOOLCHAIN_PREFIX="arm-none-eabi-"
fi

# Build additional libraries
cd libs/circle/addon/display/
make clean || true
make -j
cd ../sensor/
make clean || true
make -j
cd ../Properties/
make clean || true
make -j
cd ../../../..

cd ..

# Build MiniDexed
cd circle/sample/38-bootloader
make clean || true
make -j
ls *.img
cd ..
