include 'emu8086.inc'
.model small
.stack 100h
.data
array db 1,1,1,1,1,1
n db '1'
.code

main proc
mov ax,@data
mov ds,ax

mov si,offset array
mov dl,[si]

mov cx,6
print_loop:

cmp dl,[si]
je ok
mov n,'0'
ok:

add si,1
loop print_loop

cmp n,'1'
jne is_e
print 'All are equal'
mov ah, 4ch
int 21h
is_e:

print 'All are not equal'
mov ah, 4ch
int 21h

main endp
end main