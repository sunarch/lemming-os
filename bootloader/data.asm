
welcome     db  'Welcome to LemmingOS!', ASCII_CR, ASCII_LF, ASCII_NUL
badcommand  db  'Bad command entered.', ASCII_CR, ASCII_LF, ASCII_NUL
prompt      db  '>', ASCII_NUL
version     db  "LemmingOS v.0.1.1 Alpha", ASCII_CR, ASCII_LF, ASCII_NUL

buffer  times 64  db  0
