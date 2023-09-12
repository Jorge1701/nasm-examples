global _start

_start:
    mov eax, 1  ; Set exit call
    mov ebx, 4  ; Exit value is 4
    int 80h     ; Make syscall