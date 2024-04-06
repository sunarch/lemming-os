; This Source Code Form is subject to the terms of the Mozilla Public
; License, v. 2.0. If a copy of the MPL was not distributed with this
; file, You can obtain one at http://mozilla.org/MPL/2.0/.

; ============================================================================ ;
; classical generic MBR (Master Boot Record)

; total size: 446 + 4x16 + 2 = 512 bytes

; ============================================================================ ;
; INCLUDES - macros

%include "ascii.asm"
%include "interrupts.asm"

; ============================================================================ ;
; Bootstrap Code

org 0x7C00
bits 16

    ; set up segments
    mov ax, 0x00
    mov ds, ax
    mov es, ax

    ; setup stack
    mov ss, ax
    mov sp, 0x7C00  ; stack grows downwards from 0x7C00

    mov si, str_welcome
    call print_string

; ============================================================================ ;
; MAIN loop

mainloop:
    mov si, str_prompt
    call print_string

    mov di, buffer
    call get_string

    mov si, buffer
    cmp byte [si], ASCII_NUL  ; blank line?
    je mainloop

    ; "hi" command
    mov si, buffer
    mov di, str_cmd_hi_name
    call strcmp
    jc cmd_hi

    ; "help" command
    mov si, buffer
    mov di, str_cmd_help_name
    call strcmp
    jc cmd_help

    mov si, str_bad_command
    call print_string
    jmp mainloop

; ============================================================================ ;
; INCLUDES - parts

%include "commands.asm"
%include "data.asm"
%include "calls.asm"

; ============================================================================ ;
; PADDING

times 446-($-$$) db 0

; ============================================================================ ;
; Partition Table (primary partitions)

; Partition entry #1
times 16  db  0

; Partition entry #2
times 16  db  0

; Partition entry #3
times 16  db  0

; Partition entry #4
times 16  db  0

; ============================================================================ ;
; Boot Signature (the BIOS may require it)
; dw 0AA55h

db 0x55 ; at offset 510
db 0xAA ; at offset 511

; ============================================================================ ;
