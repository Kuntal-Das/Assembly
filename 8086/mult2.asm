data segment 
    msg2 db "Enter the values : $"
    msg db "The result is = $"
    n1 db 32h
    n2 db 02h
    r db ?
    data ends

code segment
    assume cs:code ds:data
    start:mov ax,data
    mov ds,ax
    
   ; mov dx,offset msg2   ;print string
   ; mov ah,09h
   ; int 21h
    
   ; mov ah,01h           ;single char input
   ; int 21h  
    
   ; mov n1,al         
    
   ; mov ah,01h           ;single char input
   ; int 21h
   ; mov n2,al
    
    mov al,n1
    mov bl,n2
    mul bl     ;ax=al*bl
    
    mov r,al
    
    mov dx,offset msg   ;str print
    mov ah,09h
    int 21h
    
    mov dl,r           ;single print
    mov ah,02h
    int 21h
                        ;terminate
    mov ah,4ch
    int 21h
    
    code ends
end start


