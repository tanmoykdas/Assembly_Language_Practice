.model small
.stack 256
.code

main proc
    mov dh,65
    mov si,1234
    mov 43[si],dh
    mov bl,43[si]
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main