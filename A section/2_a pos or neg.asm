include 'emu8086.inc'
.model small
.stack 100h
.data
.code

main proc    
    
      print '1st number : '
      
      mov ah,01h ; input
      int 21h  
      
        cmp al, 0
        jl negative       ; jump if less than 0
        
positive:
        print 'Positive Number'
        jmp exit
        
negative:
        print 'Negative Number'
        
exit:
        mov ah,4ch
        int 21h
        
main endp
end main
