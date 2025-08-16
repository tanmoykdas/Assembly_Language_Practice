.model small
.stack 256
.data
a db ?
b db ?
.code 

main proc
    mov ah,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov a,al
    sub  a,48
    
    mov ah,1
    int 21h
    
    sub al,48
    
    mul a
    aam          
    
    mov bx,ax
    
    mov ah,2
    mov dl,bh
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    
    main endp
end main