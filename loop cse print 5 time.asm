include 'emu8086.inc'
.model small
.stack 100h
.data
.code

main proc     
     
        mov cx,10
        
        stt:  
        
        print 'CSE'
       
          mov dl,10
          mov ah,02h
          int 21h 
          
          
          loop stt
              
  
    
    main endp
end main 

