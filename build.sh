#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# remove if output exists
rm 'build/bootloader.bin'
rm 'build/kernel.bin'
rm 'build/LemmingOS.hdd'

# ---------------------------------------------------------------------------- #
# bootloader

# assemble
nasm './bootloader/bootloader.asm' -i './common/' -i './bootloader/' -f bin -o './build/bootloader.bin'
 
# copy to bootable hdd image
dd if='build/bootloader.bin' of='build/LemmingOS.hdd' bs=512 count=1
 
# ---------------------------------------------------------------------------- #
# kernel

# assemble
nasm './kernel/kernel.asm' -i './kernel/' -f bin -o './build/kernel.bin'

# copy to bootable hdd image
dd if='build/kernel.bin' of='build/LemmingOS.hdd' obs=512 oseek=1

# ---------------------------------------------------------------------------- #
