#!/bin/bash

set -e 
set -x

if [ -z "${RPI}" ] ; then
  echo "\$RPI missing, exting"
  exit 1
fi

export RASPPI=$RPI

if [ "${RPI}" -gt "2" ]; then
    export PREFIX="aarch64-none-elf-"
else
    export PREFIX="arm-none-eabi-"
fi

cd circle/
make mrproper || true
./configure -r ${RPI} --prefix "${PREFIX}"
./makeall clean
./makeall
cd ..

cd circle/sample/38-bootloader
make clean || true
make -j
ls *.img
cd ..
