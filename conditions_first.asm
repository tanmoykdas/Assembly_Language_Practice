.model small
.stack 256
.code

main proc  
    ;check if input1 > input2 then print else do noting
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bl,bh
    jg x
    jmp y
    
    x:
    mov ah,2
    mov dl,bl
    int 21h
    
    y:
    
    mov ah,4ch
    int 21h
    main endp
end main