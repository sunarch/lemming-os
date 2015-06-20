#! /bin/bash

nasm "./LemmingOS.asm" -i "./bootloader/" -i "./kernel/" -f bin -o "./build/LemmingOS.bin"   # assemble kernel
#dd if="build/LemmingOS.bin" of="build/LemmingOS.hdd"  # create a bootable floppy image
dd if="build/LemmingOS.bin" of="build/LemmingOS.hdd"  # create a bootable hdd image
