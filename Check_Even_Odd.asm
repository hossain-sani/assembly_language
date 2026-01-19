include 'emu8086.inc'
.model small
.stack 100h
.data 
.code 

main proc 
        
        print '1st number : '
      
        mov ah,01h ; input
        int 21h   
        sub al,'0'

               
        mov ah,0
        mov bl,2
        div bl
        
        
        cmp ah,0
        je even
        printn ' Odd'
        jmp exit
        
   even:
       printn ' Even'
   
   exit:
      
     
      ;exit program
      mov ah,4ch
      int 21h
      
    main endp 

end main

                       