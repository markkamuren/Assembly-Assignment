section .data
    msg db "Sum from 25 down to 15 = ", 0

section .bss
    result resd 1

section .text
    global _start

_start:
    mov ecx, 25        ; start from 25
    mov eax, 0         ; accumulator

sum_loop:
    add eax, ecx       ; add to sum
    dec ecx            ; decrement
    cmp ecx, 14        ; stop at 15
    jne sum_loop

    mov [result], eax

    ; exit
    mov eax, 1
    int 0x80
