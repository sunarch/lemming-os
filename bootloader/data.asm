; This Source Code Form is subject to the terms of the Mozilla Public
; License, v. 2.0. If a copy of the MPL was not distributed with this
; file, You can obtain one at http://mozilla.org/MPL/2.0/.

; ============================================================================ ;

str_welcome      db  'Welcome to LemmingOS!', ASCII_CR, ASCII_LF, ASCII_NUL
str_bad_command  db  'Bad command entered.', ASCII_CR, ASCII_LF, ASCII_NUL
str_prompt       db  '>', ASCII_NUL
str_version      db  "LemmingOS v.0.1.1 Alpha", ASCII_CR, ASCII_LF, ASCII_NUL

; ============================================================================ ;

buffer  times 64  db  0

; ============================================================================ ;
