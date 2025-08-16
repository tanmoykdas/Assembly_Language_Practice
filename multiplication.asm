.model small
.stack 256
.code

main proc  
    ;multiplication of two number
    mov al,3
    mov bl,2
    
    mul bl
    
    mov ah,2
    mov dl,al
    add dl,48
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    