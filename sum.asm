include "emu8086.inc"
.model small
.stack 100h
.data
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
    add al,bl      ; sum in AL

    ; divide by 10
    mov ah,0
    mov bl,10
    div bl         ; AL=quotient, AH=remainder

    mov cl,al      ; tens
    mov ch,ah      ; ones

    ; new line
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    int 21h

    ; print result
    print 'Sum = '

    mov dl,cl
    add dl,48
    mov ah,2
    int 21h

    mov dl,ch
    add dl,48
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h
main endp
end main
