section .text
    global factorial        ; make callable from C

factorial:
    mov eax, 1              ; result = 1
    cmp edi, 1              ; if (n <= 1)
    jle done

loop_start:
    imul eax, edi           ; result *= n
    dec edi
    cmp edi, 1
    jg loop_start

done:
    ret
