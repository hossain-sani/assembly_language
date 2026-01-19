include 'emu8086.inc'

.model small
.stack 100h
.data
.code

main proc
    mov cx, 10      ; loop counter
    mov dl, '0'     ; starting character

print_loop:
    mov ah, 02h     ; DOS function to print character
    int 21h

    print ' '       ; print space
    add dl, 1       ; next number
    loop print_loop

    print '10'      ; print 10 at the end

    mov ah, 4Ch     ; terminate program
    int 21h
main endp

end main
