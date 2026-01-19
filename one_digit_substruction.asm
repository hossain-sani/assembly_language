include 'emu8086.inc'
.model small
.stack 100h
.data
  n    db ?
  m    db ?
.code

main proc
          mov   ax,@data
          mov   ds,ax

          print '1st number : '

          mov   ah,01h           ; input
          int   21h
          mov   n,al             ; storeinput al to bl
          call  newline

          print '2nd Number : '

          mov   ah, 01h
          int   21h
          mov   m, al
          call  newline

          mov   al,n
          sub   al,m             ; perform addition
          add   al,48


          print 'Result : '
          mov   dl, al           ;output bh
          mov   ah,02h
          int   21h


          ;exit program
          mov   ah,4ch
          int   21h

main endp

newline proc

          mov   dl,10
          mov   ah,02h
          int   21h

          mov   dl,13
          mov   ah,02h
          int   21h
          ret
newline endp

end main

                       