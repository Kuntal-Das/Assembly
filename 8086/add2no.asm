
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


data segment 
    n1 db ?;30h
    n2 db ?;02h
    msg db 10,13,"The Result is: $" 
    ms db 10,13,"INPUT:$"
    r db ?
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
    mov n1,al
    
    lea dx,ms          
    mov ah,09h
    int 21h
    
    mov ah,01h
    int 21h              
    mov n2,al   
              
    mov al,n1
    mov bl,n2
    add al,bl
    mov r,al
    
    mov dx,offset msg
    mov ah,09h
    int 21h
    
    mov dl,r
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    
    code ends
end start





