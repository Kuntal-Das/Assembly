 data segment 
    n1 db 36h
    n2 db 14h
    n3 db 46h
    msg db "The greatest number is :$"
    data ends
 code segment
    assume cs:code ds:data
 start:
 mov ax,data
 mov ds,ax
 
 mov al,n1 ;a
 mov bl,n2 ;b
 
 cmp al,bl
 jg l1
 jmp l2
 
 l1:mov bl,n3
 comp al,bl;a>c
 jg l3 ;a
 jmp l5;c
 
 l2:moval,n3
 cmp al,bl;c>b
 jg l5;c
 jmp l4;b 
         
 l3:
 mov dx,offset msg
 mov ah,09h
 int 21h
 
 mov dl,n1
 mov ah,02h
 int 21h
 
 l4:mov dx,offset msg
 mov ah,09h
 int 21h
 
 mov dl,n2
 mov ah,02h
 int 21h
 
 l5:mov dx,offset msg
 mov ah,09h
 int 21h
 
 mov dl,n3
 mov ah,02h
 int 21h  
    
    code ends
 end start
 
 