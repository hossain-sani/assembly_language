include 'emu8086.inc'
.model small
.stack 100h
.data
.code

main proc

        print 'Enter a number (0-9 or -1 to -9): '

        mov ah,01h        ; input a character
        int 21h
        sub al, '0'       ; convert ASCII to number (0-9)
        mov bl, al        ; save number in BL

        ; check if user entered negative (simple trick: if first char = '-')
        mov ah,01h        ; check for '-' sign
        int 21h
        cmp al,'-'        ; ASCII of minus
        jne check_positive

        ; if '-' entered, take next number as negative
        mov ah,01h
        int 21h
        sub al,'0'
        neg al
        mov bl, al

check_positive:
        cmp bl,0
        jl negative
positive:
        printn
        print 'Positive Number'
        jmp exit
negative:
        printn
        print 'Negative Number'

exit:
        mov ah,4ch
        int 21h

main endp
end main
