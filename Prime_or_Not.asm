include 'emu8086.inc'
.model small
.stack 100h
.data
.code

main proc

        print 'Enter a number (0-9): '
        mov ah,01h
        int 21h
        sub al,'0'        ; ASCII to number
        mov bl, al        ; number to check

        cmp bl, 0
        jle not_prime
        cmp bl, 1
        je not_prime

        mov cl, 2          ; divisor starts from 2

check_loop:
        mov al, bl
        xor ah, ah
        div cl             ; AL / CL ? quotient in AL, remainder in AH
        cmp ah, 0
        je not_prime       ; divisible ? not prime

        inc cl
        cmp cl, bl
        jl check_loop      ; repeat till cl < number

prime:
        printn
        print 'Prime Number'
        jmp exit

not_prime:
        printn
        print 'Not a Prime Number'

exit:
        mov ah,4ch
        int 21h

main endp
end main
