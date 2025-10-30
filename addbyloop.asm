section .data
    msg db "Sum from 15 to 25 = ", 0

section .bss
    result resd 1

section .text
    global _start

_start:
    mov ecx, 15        ; start value
    mov eax, 0         ; accumulator for sum

sum_loop:
    add eax, ecx       ; add current value
    inc ecx            ; next number
    cmp ecx, 26        ; stop at 25
    jne sum_loop

    ; store result
    mov [result], eax

    ; exit
    mov eax, 1
    int 0x80
