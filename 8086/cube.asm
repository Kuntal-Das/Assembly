data segment
    n1 db 20h
    msg db "The result is: $"
    n2 dw ?    
    data ends
code segment  
    assume cs:code ds:data
    
    start: mov ax,data
           mov ds,ax
           mov al,n1
           mov bl,n1
                 
           ;mov ah,11h      
           mul bl 
          ; mov n2,ax
           
           mul bl
          ; mov n2,ax
           
           
           lea dx,msg
           mov ah,09h
           int 21h
           
           mov dx,n2
           mov ah,02h
           int 21h
           
           mov ah,4ch
           int 21h
    
    code ends
end start