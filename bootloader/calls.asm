; This Source Code Form is subject to the terms of the Mozilla Public
; License, v. 2.0. If a copy of the MPL was not distributed with this
; file, You can obtain one at http://mozilla.org/MPL/2.0/.

; ============================================================================ ;
; CALL print_string

print_string:

    lodsb  ; grab a byte from SI

    ; check for null terminator
    or al, al
    jz .done

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
    int_keyboard  ; wait for keypress

    int_keyboard_read_char_cmp ASCII_BS
    je .backspace

    int_keyboard_read_char_cmp ASCII_CR
    je .done

    ; if buffer full, only let in backspace and enter
    cmp cl, BUFFER_LEN - 1
    je .loop

    int_video_write_char_tty
    int_video

    ; put character in buffer
    stosb
    inc cl
    jmp .loop

.backspace:
    ; ignore if beginning of string
    cmp cl, 0
    je .loop

    dec di
    mov byte [di], ASCII_NUL  ; delete character
    dec cl  ; decrement counter as well

    int_video_write_char_tty

    int_video_write_char_tty_arg ASCII_BS
    int_video

    int_video_write_char_tty_arg ASCII_SPACE
    int_video

    int_video_write_char_tty_arg ASCII_BS
    int_video

    jmp .loop

.done:
    mov al, ASCII_NUL
    stosb

    int_video_write_char_tty
    int_video_write_char_tty_arg ASCII_CR
    int_video
    int_video_write_char_tty_arg ASCII_LF
    int_video

    ret

; ============================================================================ ;
; CALL strcmp

strcmp:

.loop:
    mov al, [si]
    mov bl, [di]
    cmp al, bl
    jne .notequal

    ; are both bytes (they were equal before) null?
    cmp al, ASCII_NUL
    je .done

    inc di
    inc si
    jmp .loop

.notequal:
    clc  ; not equal, clear the carry flag
    ret

.done:
    stc  ; equal, set the carry flag
    ret

; ============================================================================ ;
