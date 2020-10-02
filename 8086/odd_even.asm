data segment 
    ms db "INPUT:$"
    msg db 10,13,"ODD$"
    msg1 db 10,13,"EVEN$"
    n DB ? ;32h
    data ends
code segment
    assume cs:code ds:data
    start:mov ax,data
    mov ds,ax
    
    lea dx,ms
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h   
    mov n,al
    
    mov ah,00h
    mov al,n
    mov bl,02h
    div bl      ;ax=al/bl al->Q ax->R
    
    cmp ah,00h
    je even
    jmp odd
    
    even:lea dx,msg1
    mov ah,09h
    int 21h      
    jmp eop
    
    odd:lea dx,msg
    mov ah,09h
    int 21h

    eop:mov ah,4ch
    int 21h
   
    code ends
end start