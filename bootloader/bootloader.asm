; This Source Code Form is subject to the terms of the Mozilla Public
; License, v. 2.0. If a copy of the MPL was not distributed with this
; file, You can obtain one at http://mozilla.org/MPL/2.0/.

; ============================================================================ ;

org 0x7C00   ; add 0x7C00 to label addresses
bits 16      ; tell the assembler we want 16 bit code

    mov ax, 0          ; set up segments
    mov ds, ax
    mov es, ax
    mov ss, ax         ; setup stack
    mov sp, 0x7C00     ; stack grows downwards from 0x7C00

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
    cmp byte [si], 0       ; blank line?
    je mainloop            ; yes, ignore it

    mov si, buffer
    mov di, str_cmd_hi_name    ; "hi" command
    call strcmp
    jc cmd_hi

    mov si, buffer
    mov di, str_cmd_help_name  ; "help" command
    call strcmp
    jc cmd_help

    mov si, str_bad_command
    call print_string
    jmp mainloop

; ============================================================================ ;
; INCLUDES

; macros
%include "ascii.asm"

; parts
%include "commands.asm"  ; command calls
%include "data.asm"      ; data
%include "calls.asm"     ; general calls

; ============================================================================ ;
; MAIN

times 510-($-$$) db 0

; bootloader signature (the BIOS may require it)
;dw 0AA55h
db 0x55
db 0xAA

; ---------------------------------------------------------------------------- ;
