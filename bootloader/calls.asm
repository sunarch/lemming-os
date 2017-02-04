; assembler: NASM - Netwide Assembler

; =============================================================================
; CALL print_string
; =============================================================================

print_string:

    lodsb             ; grab a byte from SI

    or al, al         ; logical or AL by itself
    jz .done          ; if the result is zero, get out

    mov ah, 0x0E
    int INT_VIDEO     ; otherwise, print out the character!

    jmp print_string

.done:
    ret

; =============================================================================
; CALL get_string
; =============================================================================

get_string:

    xor cl, cl

.loop:
    mov ah, 0
    int INT_KEYBOARD     ; wait for keypress

    cmp al, ASCII_BS     ; backspace pressed?
    je .backspace        ; yes, handle it

    cmp al, ASCII_CR     ; enter pressed?
    je .done             ; yes, we're done

    cmp cl, 63           ; 63 chars inputted?
    je .loop             ; yes, only let in backspace and enter

    mov ah, 0x0E
    int INT_VIDEO        ; print out character

    stosb                ; put character in buffer
    inc cl
    jmp .loop

.backspace:
    cmp cl, 0            ; beginning of string?
    je .loop             ; yes, ignore the key

    dec di
    mov byte [di], 0     ; delete character
    dec cl               ; decrement counter as well

    mov ah, 0x0E
    mov al, ASCII_BS
    int INT_VIDEO        ; backspace on the screen

    mov al, ASCII_SPACE  ; (before: ' ')
    int INT_VIDEO        ; blank character out

    mov al, ASCII_BS
    int INT_VIDEO        ; backspace again

    jmp .loop            ; go to the main loop

.done:
    mov al, ASCII_NUL    ; null terminator
    stosb

    mov ah, 0x0E
    mov al, ASCII_CR
    int INT_VIDEO
    mov al, ASCII_LF
    int INT_VIDEO        ; newline

    ret

; =============================================================================
; CALL strcmp
; =============================================================================

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

