include 'emu8086.inc'
.model small
.stack 100h
.data
    array db 1,5,3,9,2
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 5
outer:
    dec cx
    jz print_result
    mov si, offset array
    mov dx, cx
inner:
    mov al, [si]
    mov bl, [si+1]
    cmp al, bl
    jge skip_swap
    mov [si], bl
    mov [si+1], al
skip_swap:
    inc si
    dec dx
    jnz inner
    jmp outer

print_result:
    print 'descending order: '
    mov cx, 5
    mov si, offset array
output_loop:
    mov dl, [si]
    add dl, 48
    mov ah, 02h
    int 21h
    inc si
    print ' '
    loop output_loop

    mov ah, 4ch
    int 21h
main endp
end main