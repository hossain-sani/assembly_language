include 'emu8086.inc'
.model small
.stack 100h
.data
sum db 0
.code

main proc

        print 'Enter N (0-9): '
        mov ah,01h
        int 21h
        sub al,'0'        ; ASCII to number
        mov cl, al        ; CL = N

        mov bl, 0         ; BL = sum
        mov al, 1         ; AL = counter i

sum_loop:
        add bl, al        ; sum += i
        inc al
        cmp al, cl
        jle sum_loop

        printn
        print 'Sum is: '
        add bl,'0'        ; convert sum to ASCII (works for sum = 9)
        mov dl, bl
        mov ah,02h
        int 21h

exit:
        mov ah,4ch
        int 21h

main endp
end main
