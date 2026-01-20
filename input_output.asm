include "emu8086.inc"
.model small
.stack 100h
.code

main proc
    ; input
    print 'input'
    mov ah,1
    int 21h
    mov bl, al        ; input character (AL)

    ; next line
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    int 21h

    ; output     
    print 'output'
    mov dl,bl
    mov ah,2
    int 21h

    ; exit
    mov ah,4ch
    int 21h
main endp
end main

