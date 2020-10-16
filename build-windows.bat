REM This Source Code Form is subject to the terms of the Mozilla Public
REM License, v. 2.0. If a copy of the MPL was not distributed with this
REM file, You can obtain one at http://mozilla.org/MPL/2.0/.

REM assemble OS

"C:\Program Files\NASM\nasm.exe" "./LemmingOS.asm" -i "./common/" -i "./bootloader/" -i "./kernel/" -f bin -o "./build/LemmingOS.bin"

REM create a bootable hdd image

"C:\Program Files\Git\git-bash.exe" ./build-windows-dd.sh

REM dd if="build/LemmingOS.bin" of="build/LemmingOS.hdd"

PAUSE
