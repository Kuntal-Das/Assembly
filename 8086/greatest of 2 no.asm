
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

d segment 
    n1 db 36h
    n2 db 14h
    msg db "The Greatest No is : $"
    d ends
c segment
    assume cs:c ds:d
start:mov ax,d
    mov ds,ax
    
    mov al,n1
    mov bl,n2
    
    
    cmp al,bl
    jg L1
    jl L2
    
  L1:mov dx,offset msg
     mov ah,09h
        int 21h 
     mov dl,n1 
     mov ah,02h
        int 21h     
     jmp e
     
  L2:mov dx,offset msg
     mov ah,09h
        int 21h 
     mov dl,n2 
     mov ah,02h
        int 21h     

   e:mov ah,4ch
        int 21h
        
   c ends
end start






