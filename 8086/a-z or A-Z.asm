
;program to print A-Z or a-z

data segment 
   ; n db 00h  
    er db 10,13,"ERROR$",10,13 
    msg db 10,13,"INPUT:$",10,13  
    n1 db ?
    data ends
code segment
    assume cs:code ds:data
    start:mov ax,data
    mov ds,ax
    
    lea dx,msg
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h      
    mov n1,al
     
    ;mov al,n
    ;add al,
    cmp n1,41h
    je lower 
    jg lower  
   ; jl err
    
    
    p1:cmp n1,61h
    jl err
    je upper 
    jg upper
    
    
    lower:cmp n1,5ah 
    je eop
    jg p1
    mov dl,n1
    mov ah,02h
    int 21h
       
    inc n1 
    jmp lower 
              
    upper:cmp n1,7ah 
    jg eop
    mov dl,n1
    mov ah,02h
    int 21h   
    
    inc n1             
    cmp n1,7ah
    jl upper
    jg eop
    je eop
    
    err:mov dx,offset er
    mov ah,09h
    int 21h 
     
    eop:mov ah,4ch
    int 21h
    
    code ends
end start

