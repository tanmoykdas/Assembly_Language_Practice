.model small
.stack 256
.code
 
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
    
    mov ah,2
    mov dl,bl
    sub dl,17
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    