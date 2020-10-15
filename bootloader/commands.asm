; This Source Code Form is subject to the terms of the Mozilla Public
; License, v. 2.0. If a copy of the MPL was not distributed with this
; file, You can obtain one at http://mozilla.org/MPL/2.0/.


; COMMAND "hi" =================================================================

str_cmd_hi_name  db  'hi', ASCII_NUL
str_cmd_hi_msg   db  'Hello OSDev World!', ASCII_CR, ASCII_LF, ASCII_NUL


cmd_hi:
    mov si, str_cmd_hi_msg
    call print_string

    jmp mainloop

; COMMAND "help" ===============================================================

str_cmd_help_name  db  'help', ASCII_NUL
str_cmd_help_msg   db  'Commands: hi, help', ASCII_CR, ASCII_LF, ASCII_NUL

cmd_help:
    mov si, str_version
    call print_string

    mov si, str_cmd_help_msg
    call print_string

    jmp mainloop

; END ==========================================================================
