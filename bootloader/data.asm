

%define  BOOTLOADER_SIGNATURE  0AA55h  ;  first 0x55, then 0xAA (little endian)

str_welcome      db  'Welcome to ', OS_NAME, '!', ASCII_LINEBREAK_WIN, ASCII_NUL
str_bad_command  db  'Bad command entered.', ASCII_LINEBREAK_WIN, ASCII_NUL
str_prompt       db  '>', ASCII_NUL
str_version      db  OS_NAME, ' ', OS_VER_MAJ, '.', OS_VER_MIN, '.', OS_VER_REV, ' (', OS_VER_DEV, ')', ASCII_LINEBREAK_WIN, ASCII_NUL

buffer  times 64  db  0
