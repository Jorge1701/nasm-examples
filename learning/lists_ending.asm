section .data
    list DB 1,2,3,4     ; Declare a list, you cannot know where it ends
    string1 DB "ABA",0  ; Declare a string, this string ends at 0
    string2 DB "CDE",0  ; Declare a second string, this also ends at 0

section .text
global _start

_start:
    mov ebx,0   ; Set exit value 0
    mov eax,1   ; Set exit call
    int 80h     ; Make syscall