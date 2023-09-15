global _start

_start:
    mov eax, 3
    mov ebx, 5
    sub eax, ebx    ; Substract the result is 0xfffffffe (negative in complement notation)
                    ; that is starting with a 1 in the most left bit to represent it is negative
                    ; it sets the Af eflag to know it was a negative result
                    ; that's why it interprets that binary not as a big number but
                    ; a negative one -2 in this case
    
    mov ebx, 2
    add eax, ebx    ; Add 2 (0x2) and the result is 0 when added to 0xfffffffe

    mov eax, 1      ; Exit
    mov ebx, 4
    int 80h
