include 'emu8086.inc'
.model small
.stack 100h
.data 
n db ?
m db ?
.code 

main proc 
        mov ax,@data
        mov ds,ax
    
      print '1st number : '
      
        mov ah,01h ; input
        int 21h  
        mov n,al  ; storeinput al to bl
        call newline
               
               print '2nd Number : '
     
       mov ah, 01h
       int 21h
       mov m, al
       call newline  
        
       mov al,n 
       sub al,'0'
       mov n,al
       
       mov al,m
       sub al,'0'
       mul n
       add al,'0'
       
       
       ;for show aschii
       ;add bh, 30h
       ;add bl, 30h
       
       
       ;for 2 digit, show output full bx, 1:bh 2:bl
       print 'result : '
       mov dl, al     ;output 
       mov ah,02h
       int 21h
       
 
      
      ;exit program
      mov ah,4ch
      int 21h
      
    main endp 

newline proc
    
      mov dl,10
      mov ah,02h
      int 21h  
      
      mov dl,13
      mov ah,02h
      int 21h 
      ret 
newline endp

end main

                       