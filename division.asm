include "emu8086.inc"
.model small
.stack 100h
.code

main proc
    ; first number (Dividend)
    print 'Enter first number: '
    mov ah,1
    int 21h
    sub al,48
    mov bl,al        ; BL = first number

    ; new line
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    int 21h

    ; second number (Divisor)
    print 'Enter second number: '
    mov ah,1
    int 21h
    sub al,48        ; AL = second number

    ; division
    mov ah,0         ; AH must be 0
    mov cl,al        ; CL = divisor
    mov al,bl        ; AL = dividend
    div cl           ; AL = quotient, AH = remainder

    mov bh,al        ; save quotient

    ; new line
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    int 21h

    print 'Quotient = '
    mov dl,bh
    add dl,48
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h
main endp
end main

