#! /bin/bash

#nasm "./bootloader/bootloader.asm" -i "./bootloader/" -f bin -o "./build/bootloader.bin"  # assemble bootloader
#nasm "./kernel/kernel.asm" -i "./kernel/" -f bin -o "./build/kernel.bin"  # assemble kernel

nasm "./lemming-os.asm" -i "./common/" -i "./bootloader/" -i "./kernel/" -f bin -o "./build/lemming-os.bin"   # assemble OS

#dd if="build/bootloader.bin" of="build/LemmingOS.hdd" bs=512  # create a bootable hdd image
#dd if="build/kernel.bin" of="build/LemmingOS.hdd" obs=512 skip=1 # create a bootable hdd image
#dd if="build/LemmingOS.bin" of="build/LemmingOS.flp"  # create a bootable floppy image

dd if="build/lemming-os.bin" of="build/lemming-os.hdd"  # create a bootable hdd image
