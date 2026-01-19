include 'emu8086.inc'

.model small
.stack 100h
.data
.code

sub_proc proc
    mov dl, '8'      ; first value (ASCII '8')
    sub dl, 3        ; subtract second value (3)
    mov ah, 02h      ; display result
    int 21h
    ret
sub_proc endp

main proc
    call sub_proc    ; call subtraction function
    mov ah,4Ch       ; exit
    int 21h
main endp

end main
