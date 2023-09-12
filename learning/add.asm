global _start

_start:
    mov eax,1   ; Set eax to 1
    mov ebx,4   ; Set ebx to 4
    add ebx,eax ; Add values at eax and ebx, result is stored at left register ebx

    ; eax already set to 1 with means exit
    ; exit call uses ebx to get value
    ; that means the result of add will be the exit code

    int 80h ; Make syscall