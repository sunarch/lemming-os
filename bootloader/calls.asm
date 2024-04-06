; This Source Code Form is subject to the terms of the Mozilla Public
; License, v. 2.0. If a copy of the MPL was not distributed with this
; file, You can obtain one at http://mozilla.org/MPL/2.0/.

; ============================================================================ ;
; CALL print_string

print_string:

    lodsb             ; grab a byte from SI

    or al, al         ; logical or AL by itself
    jz .done          ; if the result is zero, get out

                      ; otherwise
    int_video_write_char_tty
    int_video

    jmp print_string

.done:
    ret

; ============================================================================ ;
; CALL get_string

get_string:

    xor cl, cl

.loop:
    int_keyboard_read_char
    int_keyboard            ; wait for keypress

    cmp al, ASCII_BS        ; backspace pressed?
    je .backspace           ; yes, handle it

    cmp al, ASCII_CR        ; enter pressed?
    je .done                ; yes, we're done

    cmp cl, BUFFER_LEN - 1  ; 63 chars inputted?
    je .loop                ; yes, only let in backspace and enter

    int_video_write_char_tty
    int_video

    stosb                   ; put character in buffer
    inc cl
    jmp .loop

.backspace:
    cmp cl, 0         ; beginning of string?
    je .loop          ; yes, ignore the key

    dec di
    mov byte [di], 0  ; delete character
    dec cl            ; decrement counter as well

    int_video_write_char_tty

    int_video_write_char_tty_arg  ASCII_BS
    int_video

    int_video_write_char_tty_arg  ASCII_SPACE
    int_video

    int_video_write_char_tty_arg  ASCII_BS
    int_video

    jmp .loop         ; go to the main loop

.done:
    mov al, 0     ; null terminator
    stosb

    int_video_write_char_tty
    int_video_write_char_tty_arg  ASCII_CR
    int_video
    int_video_write_char_tty_arg  ASCII_LF
    int_video

    ret

; ============================================================================ ;
; CALL strcmp

strcmp:

.loop:
    mov al, [si]   ; grab a byte from SI
    mov bl, [di]   ; grab a byte from DI
    cmp al, bl     ; are they equal?
    jne .notequal  ; nope, we're done.

    cmp al, 0      ; are both bytes (they were equal before) null?
    je .done       ; yes, we're done.

    inc di         ; increment DI
    inc si         ; increment SI
    jmp .loop      ; loop!

.notequal:
    clc  ; not equal, clear the carry flag
    ret

.done:
    stc  ; equal, set the carry flag
    ret

; ============================================================================ ;
