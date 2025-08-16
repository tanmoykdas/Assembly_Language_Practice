.model small
.stack 256
.code

main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    add bl,bh 
    
    mov ah,2
    mov dl,bl
    sub dl,48
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main