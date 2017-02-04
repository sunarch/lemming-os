; assembler: NASM - Netwide Assembler

; preprocesor definitions
%include "ascii.asm"         ; ASCII characters
%include "metadata.asm"      ; Operating System metadata
%include "interrupts.asm"    ; interrupt vectors and function codes

; bootloader
%include "bootloader.asm"

; kernel
%include "kernel.asm"
