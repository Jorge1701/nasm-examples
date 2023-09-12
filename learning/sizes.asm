section .data
    num DB 1    ; Declare 1 byte equal to 1
    num2 DB 2   ; Declare 1 byte equal to 2

; Other sizes:
;
; 1  byte  (8 bit)  : DB
; 2  bytes (16 bit) : DW
; 4  bytes (32 bit) : DD
; 8  bytes (64 bit) : DQ
; 10 bytes (80 bit) : DT
; 16 bytes (128 bit): DO
; 32 bytes (256 bit): DY
; 64 bytes (512 bit): DZ


section .text
global _start

; Reference the registers
;
; For example register b:
;
; ebx   as 32 bit
; bx    as 16 bit
; bl    as the lower 8 bit
; bh    as the higher 8 bit

_start:
    mov bl,[num]    ; Move value at num to the lower 8 bit of b register
    mov ch,[num2]   ; Move value at num2 to the higher 8 bit of c register
    mov eax,1       ; Set exit call
    int 80h         ; Make syscall