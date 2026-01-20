include 'emu8086.inc'
.model small
.stack 100h
.data
array db '1','5','3','8','2','4' ; Array
.code

main proc
mov ax,@data
mov ds,ax

mov si,offset array
mov cx,6
mov dl,[si]          

n_loop:
cmp dl,[si]         
jg skip              
mov dl,[si]          
skip:
add si,1             
loop n_loop         

mov ah,02h          
int 21h

mov ah, 4ch
int 21h

main endp
end main