include 'emu8086.inc'
.model small
.stack 100h
.data
array db '6','9','3','4','5','6'
n db '1'
.code

main proc
mov ax,@data
mov ds,ax

mov si,offset array
mov cx,6
mov dl,[si]

n_loop:
cmp dl,[si]
jl skip
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