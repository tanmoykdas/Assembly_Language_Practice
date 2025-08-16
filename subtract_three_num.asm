.model small
.stack 256
.data
a db 'Input three digits: $'
b db 'Subtraction of three digits: $'
c db ?
d db ?
e db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    ; Prompt
    mov ah,9
    lea dx,a
    int 21h
    
    ; Read first digit
    mov ah,1
    int 21h
    sub al,48
    mov c,al
    
    ; Read second digit
    mov ah,1
    int 21h
    sub al,48
    mov d,al
    
    ; Read third digit
    mov ah,1
    int 21h
    sub al,48
    mov e,al
    
    ; Subtract
    mov al,c
    sub al,d
    sub al,e
    
    ; Convert result to ASCII
    add al,48
    mov c,al
    
    ; New line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ; Output label
    mov ah,9
    lea dx,b
    int 21h
    
    ; Output result
    mov ah,2
    mov dl,c
    int 21h
    
    ; Exit
    mov ah,4ch
    int 21h
main endp
end main