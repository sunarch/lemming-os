
; =============================================================================
; COMMAND "hi"
; =============================================================================

str_cmd_hi_name  db  'hi', ASCII_NUL
str_cmd_hi_msg   db  'Sorry, I am not Turing-complete.', ASCII_LINEBREAK_WIN, ASCII_NUL


cmd_hi:
    mov si, str_cmd_hi_msg
    call print_string

    jmp mainloop

; =============================================================================
; COMMAND "help"
; =============================================================================

str_cmd_help_name  db  'help', ASCII_NUL
str_cmd_help_msg   db  'Commands: hi, help', ASCII_LINEBREAK_WIN, ASCII_NUL

cmd_help:
    mov si, str_version
    call print_string

    mov si, str_cmd_help_msg
    call print_string

    jmp mainloop
