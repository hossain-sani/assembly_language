include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc 
             
       ; Background color change code 
             
MOV AH, 06h    ; Scroll up function
XOR AL, AL     ; Clear entire screen
XOR CX, CX     ; Upper left corner CH=row, CL=column
MOV DX, 184FH  ; lower right corner DH=row, DL=column 
MOV BH, 0F0h    ; WhiteOnBlack
INT 10H

    mov ax, @data
    mov ds, ax

    print "Enter loop count (1-9): "
    mov ah, 01h          ; Read single char input from user
    int 21h                                               
    sub al, '0'          ; Convert ASCII digit to number  
    
    xor cx, cx           ; Clear CX register
    mov cl, al           ; Move number to CL (low byte of CX)
        
       
   
    ; Print newline after input
    mov dl, 10           ; Line feed
    mov ah, 02h
    int 21h

    mov dl, 13           ; Carriage return
    mov ah, 02h
    int 21h
    
    print "Loop Is : "

loop_start:
    mov dl, 'A'          ; Character to print
    mov ah,02h
    int 21h  
    
    mov dl, 32           ; Print space (ASCII 32)
    mov ah, 02h
    int 21h

    loop loop_start

    mov ah, 4Ch          ; Exit program
    int 21h
    
main endp
end main

