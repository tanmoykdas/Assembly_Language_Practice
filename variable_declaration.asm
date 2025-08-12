.model small
.stack 256
.data
a db 5
b db ?
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,1
    int 21h
    mov b,al
    mov bl, al
    
    mov ah,2
    mov dl, 10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl, a
    add dl, 48
    int 21h
    
    mov ah,2
    mov dl, 10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h 
    
    mov ah,2
    mov dl, bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end
    
    