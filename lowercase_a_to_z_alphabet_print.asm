include 'emu8086.inc'

.model small
.stack 100h
.data
.code

main proc
    mov cx, 26      ; total letters a-z
    mov dl, 'a'     ; start from 'a'
    
    
    
print_loop:
    mov ah, 02h     ; DOS function to print character
    int 21h
    add dl, 1       ; next character
    loop print_loop

    mov ah, 4Ch     ; program terminate
    int 21h

main endp
end main
