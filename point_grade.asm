include 'emu8086.inc'

.model small
.stack 100h
.data
.code

main proc
    print 'Enter score (2 digits): '

    mov ah, 01h
    int 21h
    sub al, '0'
    mov bl, 10
    mul bl
    mov bh, al

    mov ah, 01h
    int 21h
    sub al, '0'
    add bh, al

    mov al, bh

    cmp al, 90
    jae GRADE_A
    cmp al, 70
    jae GRADE_B
    cmp al, 50
    jae GRADE_C

    printn '  Fail'
    jmp EXIT

GRADE_A:
    printn '  Grade A'
    jmp EXIT

GRADE_B:
    printn '  Grade B'
    jmp EXIT

GRADE_C:
    printn '  Grade C'

EXIT:
    mov ah, 4Ch
    int 21h

main endp
end main