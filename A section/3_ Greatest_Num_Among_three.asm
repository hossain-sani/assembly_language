include 'emu8086.inc'
.model small
.stack 100h
.data
.code

main proc

        print 'Enter 1st number: '
        mov ah,01h
        int 21h
        sub al,'0'        ; ASCII to number
        mov bl, al        ; store 1st number in BL

        printn
        print 'Enter 2nd number: '
        mov ah,01h
        int 21h
        sub al,'0'
        mov bh, al        ; store 2nd number in BH

        printn
        print 'Enter 3rd number: '
        mov ah,01h
        int 21h
        sub al,'0'
        mov cl, al        ; store 3rd number in CL

        ; Compare BL and BH
        mov al, bl
        cmp al, bh
        jge check_third
        mov al, bh

check_third:
        cmp al, cl
        jge greatest
        mov al, cl

greatest:
        printn
        print 'Greatest number is: '
        add al, '0'       ; convert back to ASCII
        mov dl, al
        mov ah, 02h
        int 21h

exit:
        mov ah,4ch
        int 21h

main endp
end main
