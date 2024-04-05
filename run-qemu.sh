#!/bin/sh -e

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


ISO='./build/LemmingOS.hdd'
RAM='1G'

qemu-system-x86_64 \
    -drive file="${ISO}",media=disk,format=raw \
    -m "${RAM}"
