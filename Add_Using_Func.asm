include 'emu8086.inc'
.model small
.stack 100h
.data
.code

ad proc
    mov dl, '5'     ; first value
    add dl, 3       ; add second value
    mov ah, 02h     ; display result
    int 21h
    ret
ad endp

main proc
    call ad         ; call function
main endp

end main
