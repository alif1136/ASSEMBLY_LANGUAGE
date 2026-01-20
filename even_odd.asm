include "emu8086.inc"
.model small
.stack 100h
.code

main proc
    print 'Enter a number: '

    ; input
    mov ah,1
    int 21h
    sub al,48        ; ASCII ? number

    ; check even/odd
    mov ah,0
    mov bl,2
    div bl           ; AL = quotient, AH = remainder

    cmp ah,0
    je even
    jmp odd

even:
    print 'Even'
    jmp exit

odd:
    print 'Odd'

exit:
    mov ah,4ch
    int 21h
main endp
end main



