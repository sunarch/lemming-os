#!/usr/bin/env bash

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

BUILD_DIR='./build/'

BOOTLOADER_BIN="${BUILD_DIR}bootloader.bin"
KERNEL_BIN="${BUILD_DIR}kernel.bin"
HDD_FILE="${BUILD_DIR}LemmingOS.hdd"

# remove if output exists
rm "${BOOTLOADER_BIN}"
rm "${KERNEL_BIN}"
rm "${HDD_FILE}"

# ---------------------------------------------------------------------------- #
# bootloader

BOOTLOADER_DIR='./bootloader/'
BOOTLOADER_SRC="${BOOTLOADER_DIR}bootloader.asm"
BOOTLOADER_SIZE=512

# assemble
nasm "${BOOTLOADER_SRC}" -f bin -o "${BOOTLOADER_BIN}" \
     -i "${BOOTLOADER_DIR}" \
     -i './macros/'

# copy to bootable hdd image
dd if="${BOOTLOADER_BIN}" of="${HDD_FILE}" bs=$BOOTLOADER_SIZE count=1
 
# ---------------------------------------------------------------------------- #
# kernel

KERNEL_DIR='./kernel/'
KERNEL_SRC="${KERNEL_DIR}kernel.asm"
KERNEL_SIZE=512

# assemble
nasm "${KERNEL_SRC}" -f bin -o "${KERNEL_BIN}" \
     -i "${KERNEL_DIR}"

# copy to bootable hdd image
dd if="${KERNEL_BIN}" of="${HDD_FILE}" obs=$KERNEL_SIZE oseek=1

# ---------------------------------------------------------------------------- #
