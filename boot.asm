mov ah, 0x0e
mov al, 65
int 0x10
mov bx, 1
jmp loop

loop:
    mov ah, 0x0e
    inc al
    int 0x10
    inc bx
    cmp bx, 26
    jne loop


jmp $

times 510-($-$$) db 0
db 0x55, 0xaa