
str_welcome      db  'Welcome to LemmingOS!', ASCII_CR, ASCII_LF, ASCII_NUL
str_bad_command  db  'Bad command entered.', ASCII_CR, ASCII_LF, ASCII_NUL
str_prompt       db  '>', ASCII_NUL
str_version      db  "LemmingOS v.0.1.1 Alpha", ASCII_CR, ASCII_LF, ASCII_NUL

buffer  times 64  db  0
