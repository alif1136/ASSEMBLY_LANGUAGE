include "emu8086.inc"
.model small
.stack 100h
.code

main proc
    ; first number
    print 'Enter first number: '
    mov ah,1
    int 21h
    sub al,48
    mov bl,al

    ; new line
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    int 21h

    ; second number
    print 'Enter second number: '
    mov ah,1
    int 21h
    sub al,48

    ; sum
    add al,bl
    mov cl,al        ; ? SAVE SUM HERE

    ; new line
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    int 21h

    print 'Sum = '

    mov al,cl        ; ? RESTORE SUM
    add al,48
    mov dl,al
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h
main endp
end main

