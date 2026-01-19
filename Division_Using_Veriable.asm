include 'emu8086.inc'
.model small
.stack 100h
.data
.code

main proc  
    
    
  
        
    mov ax, 20       
    mov bl, 4     
     print ' Division : '

    xor dx, dx       ; clear DX before division
    div bl           ; AX / BL, quotient in AL

    add al, '0'      ; convert quotient to ASCII
     
    ;output 
    mov dl, al       
    mov ah, 2     
    int 21h
              
    mov ah, 4Ch
    int 21h
main endp
end main