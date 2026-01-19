include 'emu8086.inc'
.model small
.stack 100h
.data
    string db 'hello guys'
    n      db '1'
.code

main proc
            mov  ax, @data
            mov  ds, ax

            mov  si, offset string
            add  si, 9                ; point to last character
            mov  cx, 10

    n_loop:
            mov  dl, [si]
            mov  ah, 02h
            int  21h
            sub  si, 1
            loop n_loop

            mov  ah, 4Ch
            int  21h
main endp

end main
