.model small
.stack 256
.data
a db 'Enter a Character: $'
b db 'Your Character is: $'

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
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h   
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    mov ah,4ch
    int 21h
main endp
end main