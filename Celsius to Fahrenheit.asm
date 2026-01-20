.model small 
.stack 100h 
.code 
main proc 
    mov al, 35      ; let celsius = 25 
    mov bl, 9 
    mul bl          ; ax = 25 * 9 = 225 
     
    mov bl, 5 
    div bl          ; al = 225 / 5 = 45 
     
    add al, 32      ; al = 45 + 32 = 77 
     
    ; logic to print 77 (2 digits) 
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