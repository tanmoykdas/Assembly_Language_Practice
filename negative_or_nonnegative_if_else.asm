.model small
.stack 256
.data
a db 'Enter a digit between -9 to 9 to check if its negative or not: $'
b db 'Negative $'
c db 'Non negative $'

.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,'-'
    je x
    jmp y
         
    x:
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,9   
    lea dx,b
    int 21h
    jmp exit
    
    y:
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,c
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    