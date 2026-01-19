include 'emu8086.inc'
.model small
.stack 100h
.data
    message db 'Hello, 8086 Assembly Strings!$'

.code
main proc  


    mov ax, @data
    mov ds, ax

    ; Display the string message
    mov ah, 09h
    lea dx, message
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h
main endp
end main
