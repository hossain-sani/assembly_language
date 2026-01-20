include 'emu8086.inc'
.model small
.stack 100h
.data
    num db 4
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cl, num     
    mov ch, 0       
    mov ax, 1       

    factorial_loop:
        mul cx          
        loop factorial_loop 

    ; Output section
    print "Factorial is: "
    call print_num      

    mov ah, 4ch
    int 21h

main endp

; Include the helper function to print numbers
define_print_num
define_print_num_uns
end main