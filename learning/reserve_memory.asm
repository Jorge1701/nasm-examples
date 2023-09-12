section .bss
    num RESB 3  ; Reserve 3 bytes starting at num

; Reserve different sizes:
;
; 1  byte  (8 bit)  : RESB
; 2  bytes (16 bit) : RESW
; 4  bytes (32 bit) : RESD
; 8  bytes (64 bit) : RESQ
; 10 bytes (80 bit) : REST
; 16 bytes (128 bit): RESO
; 32 bytes (256 bit): RESY
; 64 bytes (512 bit): RESZ

section .text
global _start

_start:
    mov bl,1        ; Move value 1 into 8 bit register bl, so the size is defined
    mov [num],bl    ; Move the byte in bl into num
    mov [num+1],bl  ; Move the byte in bl into the first byte after num
    mov [num+2],bl  ; Move the byte in bl into the second byte next to num

    mov ebx,0   ; Set exit value 0
    mov eax,1   ; Set exit call
    int 80h     ; Make syscall
