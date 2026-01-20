include 'emu8086.inc'
.model small
.stack 100h
.data
array db 1,2,3,4,5,6
.code
main proc
mov ax,@data
mov ds,ax
mov si,offset array
add si,5
mov cx,6
print_loop:
mov dl,[si]
add dl,48
mov ah,02h
int 21h
sub si,1
loop print_loop
mov ah,4ch
int 21h
main endp
end main