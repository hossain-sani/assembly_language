include 'emu8086.inc'
.model small
.stack 100h
.data
.code

main proc     
     
        print 'CSE'     
        mov dl,32    ; space 
        mov ah,02h
        int 21h 
        print 'CSE' 
       
           
        mov dl,10     ; new line   
        mov ah,02h
        int 21h  
        
        mov dl,13    ;cre  
        mov ah,02h
        int 21h
        
        print 'CSE'     
        mov dl,32
        mov ah,02h
        int 21h    
        print 'CSE'  
          
              
    mov ah,02h   ; output
    int 21h    
              
     mov ah, 04ch   ; optional - exit condition
     int 21h
    
    main endp
end main 

