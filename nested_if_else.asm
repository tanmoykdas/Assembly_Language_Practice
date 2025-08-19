.model small
.stack 256
.data
b db 10,13,'Equal to 5$'
c db 10,13,'Greater than 5$'
a db 10,13,'Less than 5$'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp bl,53
    jl x
    je y
    jg z
    
    x:
    mov ah,9
    lea dx,a
    int 21h
    jmp exit
    
    y:
    mov ah,9
    lea dx,b
    int 21h
    jmp exit
    
    z:
    mov ah,9
    lea dx,c
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
  