; This Source Code Form is subject to the terms of the Mozilla Public
; License, v. 2.0. If a copy of the MPL was not distributed with this
; file, You can obtain one at http://mozilla.org/MPL/2.0/.

; ============================================================================ ;

; BIOS interrupt codes

; ============================================================================ ;
; 10h - Video Services

%define  int_video                                int 0x10

; Set Video Mode
%define  int_video_set_mode                       mov ah, 0x00

; Set Cursor Shape
%define  int_video_set_cursor_shape               mov ah, 0x01

; Set Cursor Position
%define  int_video_set_cursor_pos                 mov ah, 0x02

; Get Cursor Position And Shape
%define  int_video_get_cursor_pos_and_shape       mov ah, 0x03

; Get Light Pen Position
%define  int_video_get_light_pen_pos              mov ah, 0x04

; Set Display Page
%define  int_video_set_display_page               mov ah, 0x05

; Clear/Scroll Screen Up
%define  int_video_clear_scroll_screen_up         mov ah, 0x06

; Clear/Scroll Screen Down
%define  int_video_clear_scroll_screen_down       mov ah, 0x07

; Read Character and Attribute at Cursor
%define  int_video_read_char_and_attr_at_cursor   mov ah, 0x08

; Write Character and Attribute at Cursor
%define  int_video_write_char_and_attr_at_cursor  mov ah, 0x09

; Write Character at Cursor
%define  int_video_write_char_at_cursor           mov ah, 0x0A

; Set Border Color
%define  int_video_set_border_color               mov ah, 0x0B

; Write Graphics Pixel
%define  int_video_write_graphics_pixel           mov ah, 0x0C

; Read Graphics Pixel
%define  int_video_read_graphics_pixel            mov ah, 0x0D

; Write Character in TTY Mode
%define  int_video_write_char_tty                 mov ah, 0x0E
%macro   int_video_write_char_tty_arg  1
    mov al, %1
%endmacro

; Get Video Mode
%define  int_video_get_video_mode                 mov ah, 0x0F

; Set Palette Registers (EGA, VGA, SVGA)
%define  int_video_set_palette_registers          mov ah, 0x10

; Character Generator (EGA, VGA, SVGA)
%define  int_video_char_generator                 mov ah, 0x11

; Alternate Select Functions (EGA, VGA, SVGA)
%define  int_video_alt_select_functions           mov ah, 0x12

; Write String
%define  int_video_write_string                   mov ah, 0x13

; Get or Set Display Combination Code (VGA, SVGA)
%define  int_video_get_or_set_display_combo_code  mov ah, 0x1A

; Get Functionality Information (VGA, SVGA)
%define  int_video_get_functionality_info         mov ah, 0x1B

; Save or Restore Video State (VGA, SVGA)
%define  int_video_save_or_restore_video_state    mov ah, 0x1C

; VESA BIOS Extension Functions (SVGA)
%define  int_video_vesa_bios_ext_functions        mov ah, 0x4F

; ============================================================================ ;
; 16h - Keyboard services

%define  int_keyboard                   int 0x16

; Read Character
%define  int_keyboard_read_char         mov ah, 0x00

; Read Input Status
%define  int_keyboard_input_status      mov ah, 0x01

; Read Keyboard Shift Status
%define  int_keyboard_shift_status      mov ah, 0x02

; Store Keystroke in Keyboard Buffer
%define  int_keyboard_stroke_to_buffer  mov ah, 0x05

; Read Character Extended
%define  int_keyboard_read_char_ext     mov ah, 0x10

; Read Input Status Extended
%define  int_keyboard_input_status_ext  mov ah, 0x11

; Read Keyboard Shift Status Extended
%define  int_keyboard_shift_status_ext  mov ah, 0x12

; ============================================================================ ;
