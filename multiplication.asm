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
    mov bl,al        ; BL = first number

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
    sub al,48        ; AL = second number

    ; multiplication
    mul bl           ; AX = AL * BL

    ; split result (AX = 0–81)
    mov bl,10
    div bl           ; AL = tens, AH = ones

    mov cl,al        ; tens
    mov ch,ah        ; ones

    ; new line
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    int 21h

    print 'Result = '

    ; print tens if not zero
    cmp cl,0
    je skip_tens
    mov dl,cl
    add dl,48
    mov ah,2
    int 21h

skip_tens:
    ; print ones
    mov dl,ch
    add dl,48
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h
main endp
end main


