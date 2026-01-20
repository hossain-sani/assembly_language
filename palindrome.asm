include 'emu8086.inc'
.model small
.stack 100h
.data
    string db 'madam'
    len dw 5
.code
main proc
    mov ax, @data
    mov ds, ax

    mov si, offset string        
    mov di, offset string
    add di, len                  
    dec di                     

    mov cx, len
    shr cx, 1                   

check_loop:
    mov al, [si]               
    mov bl, [di]                
    
    cmp al, bl                  
    jne not_palindrome         

    inc si                    
    dec di                   
    loop check_loop

    print 'it is a palindrome'
    jmp exit

not_palindrome:
    print 'it is not a palindrome'

exit:
    mov ah, 4ch
    int 21h
main endp
end main