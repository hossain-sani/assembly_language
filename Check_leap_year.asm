include 'emu8086.inc'
.model small
.stack 100h
.data
.code

main proc
    
        mov ax, 2024     ; given year
        
        mov bx, 4
        mov dx, 0
        div bx           ; AX / 4
        
        cmp dx, 0
        jne not_leap     ; if not divisible by 4
        
        mov ax, 2024
        mov bx, 100
        mov dx, 0
        div bx           ; AX / 100
        
        cmp dx, 0
        jne leap_year    ; divisible by 4 but not 100
        
        mov ax, 2024
        mov bx, 400
        mov dx, 0
        div bx           ; AX / 400
        
        cmp dx, 0
        jne not_leap
        
leap_year:
        print 'Leap Year'
        jmp exit
        
not_leap:
        print 'Not a Leap Year'
        
exit:
        mov ah,4ch
        int 21h
        
main endp
end main
