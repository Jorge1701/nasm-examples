global _start

_start:
    mov al,0b11111111   ; Move largest 8 bit value into al
    mov bl,0b0001       ; Move value 1 into bl
    add al,bl           ; Add al and bl and the result will be 0 at al
                        ; because the carry gets saved only in the eflags
    adc ah,0            ; With adc we can save the carry into ah

    ; at this point abx will have a value of 256
    ; al the lower bits plus ah the higher bits containing the carry

    mov eax, 1  ; Set exit call
    mov ebx, 0  ; Exit value
    int 80h     ; Make syscall