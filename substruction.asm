include "emu8086.inc"
.model small
.stack 100h
.data
.code

main proc
    ; first number
    print 'Enter first number: '
    mov ah,1h
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
    mov ah,1h
    int 21h
    sub al,48

    ; subtraction
    sub bl,al      ; BL = first - second

    ; new line
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    int 21h

    ; result
    print 'Subtraction = '

    mov dl,bl
    add dl,48
    mov ah,2h
    int 21h

    mov ah,4ch
    int 21h
main endp
end main

