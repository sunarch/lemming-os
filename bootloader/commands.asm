
; =============================================================================
; COMMAND "hi"
; =============================================================================

cmd_hi_name          db  'hi', 0
cmd_hi_msg  db  'Hello OSDev World!', 0x0D, 0x0A, 0


cmd_hi:
    mov si, cmd_hi_msg
    call print_string

    jmp mainloop

; =============================================================================
; COMMAND "help"
; =============================================================================

cmd_help_name  db  'help', 0
cmd_help_msg  db  'LemmingOS: Commands: hi, help', 0x0D, 0x0A, 0

cmd_help:
    mov si, cmd_help_msg
    call print_string

    jmp mainloop
