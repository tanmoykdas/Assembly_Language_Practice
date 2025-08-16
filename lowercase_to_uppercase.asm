.model small
.stack 256
.data
a db 'give a lowercase alphabet: $'
b db ?
c db 'upperecase number: $'
.code

main proc
    ;prompt
    mov ax,@data
    mov ds,ax
    
    ;show string
    mov ah,9
    lea dx,a
    int 21h
    
    ;taking input alphabet
    mov ah,1
    int 21h
    mov bl,al
              
    ;uppercase
    sub bl,32   
    
    ;newline
    mov ah,2
    mov dl,10
    int 21h
    mov ah,2
    mov dl,13
    int 21h
    
    ;printing string
    mov ah,9
    lea dx,c
    int 21h    
    
    ;printing uppercase
    mov ah,2
    mov dl,bl
    int 21h
           
    ;exit
    mov ah,4ch
    int 21h
main endp
end main
    