section .data   ; Declare data
    num DD 5    ; Declare 

section .text
global _start

_start:
    mov eax,1       ; Set exit call
    mov ebx,[num]   ; Move the value at address num into ebx
    int 80h         ; Make syscall