.model small 
.stack 100h 
.code 
main proc 
    
    mov al, 95    ; fahrenheit value   
    sub al, 32      
    mov bl, 5
    mul bl          
    mov bl, 9
    div bl          
    
    ; logic to print digits
    aam 
    mov bx, ax 
    mov dl, bh 
    add dl, 48 
    mov ah, 02h 
    int 21h 
    mov dl, bl 
    add dl, 48 
    int 21h 
 
    mov ah, 4ch 
    int 21h 
main endp 
end main