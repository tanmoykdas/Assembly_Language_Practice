.model small
.stack 256
.data
a db 'give 3 intiger: $' 
e db 'sum of three input: $'
b db ?
c db ?
d db ?
.code

main proc     
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h   
    
    mov ah,1
    int 21h
    sub al,48    ; convert ASCII to number
    mov b,al     ; store first number
    
    mov ah,1
    int 21h
    sub al,48    ; convert ASCII to number
    mov c,al     ; store second number
    
    mov ah,1
    int 21h
    sub al,48    ; convert ASCII to number
    mov d,al     ; store third number
    
    mov al,b     ; load first number
    add al,c     ; add second number
    add al,d     ; add third number
    mov b,al     ; store sum back in b
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,e
    int 21h
    
    mov ah,2  
    mov dl, b
    add dl,48   ; convert number back to ASCII
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main