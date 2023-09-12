section .data
    num DB 3 DUP(2) ; Initialize 3 bytes and start them at value 2

section .text
global _start

_start:
    mov bl,[num]    ; Set exit value to the first byte of num
    mov eax,1       ; Set exit call
    int 80h         ; Make syscall
