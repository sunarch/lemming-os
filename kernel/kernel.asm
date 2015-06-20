; ErgOS kernel v0.1.1 Alpha

org 0x7C00   ; add 0x7C00 to label addresses
bits 16      ; tell the assembler we want 16 bit code

    mov ax, 0          ; set up segments
    mov ds, ax
    mov es, ax
    mov ss, ax         ; setup stack
    mov sp, 0x7C00     ; stack grows downwards from 0x7C00

    mov si, welcome
    call print_string

; =============================================================================
; MAIN loop
; =============================================================================

mainloop:
    mov si, prompt
    call print_string

    mov di, buffer
    call get_string

    mov si, buffer
    cmp byte [si], 0       ; blank line?
    je mainloop            ; yes, ignore it

    mov si, buffer
    mov di, cmd_hi_name    ; "hi" command
    call strcmp
    jc cmd_hi

    mov si, buffer
    mov di, cmd_help_name  ; "help" command
    call strcmp
    jc cmd_help

    mov si, badcommand
    call print_string
    jmp mainloop

; =============================================================================
; INCLUDES
; =============================================================================

%include "commands.asm"  ; command calls
%include "data.asm"      ; data
%include "calls.asm"     ; general calls

; =============================================================================
; END
; =============================================================================

times 510-($-$$) db 0
dw 0AA55h ; some BIOSes require this signature
