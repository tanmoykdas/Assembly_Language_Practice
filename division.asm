.model samll
.stack 256
.code

main proc  
    ;divison of two number
    mov al,4
    mov bl,2 
    
    div bl
    
    mov cl,al
    mov ch,ah 
    
    mov ah,2
    mov dl,cl
    add dl,48
    int 21h
            
            
    mov ah,2
    mov dl,32
    int 21h
    
    mov ah,2
    mov dl,ch 
    add dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    