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

    ; check positive or negative
    cmp al,0
    jl negative
    jg positive

    print 'Zero'
    jmp exit

positive:
    print 'Positive'
    jmp exit

negative:
    print 'Negative'

exit:
    mov ah,4ch
    int 21h
main endp
end main


