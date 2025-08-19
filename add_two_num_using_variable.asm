.model small
.stack 256
.data

a db ?
b db ?

.code 
main proc    
    ;add and substract using two variable
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov cl,al
    
    sub cl,48
    
    add bl,cl
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main