include 'emu8086.inc'
.model small
.stack 100h
.data
n dw ?
m dw ?
.code

main proc
    mov ax,@data
    mov ds,ax

    ; -------- input first 2-digit --------
    print '1st number: '
    mov ah,1
    int 21h
    sub al,'0'
    mov bl,al
    mov bh,0
    mov ax,bx
    mov cx,10
    mul cx
    mov n,ax

    mov ah,1
    int 21h
    sub al,'0'
    add n,ax
    call newline

    ; -------- input second 2-digit --------
    print '2nd number: '
    mov ah,1
    int 21h
    sub al,'0'
    mov bl,al
    mov bh,0
    mov ax,bx
    mov cx,10
    mul cx
    mov m,ax

    mov ah,1
    int 21h
    sub al,'0'
    add m,ax
    call newline

    ; -------- subtraction --------
    mov ax,n
    sub ax,m

    ; -------- print result --------
    print 'result: '
    mov bx,10
    xor cx,cx
next:
    xor dx,dx
    div bx
    push dx
    inc cx
    test ax,ax
    jnz next
prnt:
    pop dx
    add dl,'0'
    mov ah,2
    int 21h
    loop prnt

    mov ah,4ch
    int 21h
main endp

newline proc
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    ret
newline endp

end main
