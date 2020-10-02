data segment
   arr db 32h,32h 
   
   data ends                          
code segment
    assume cs:code ds:data
    start:mov ax,data
    mov ds,ax
    
    mov si,offset arr
    mov al,[si]
    inc si
    mov bl,[si]
    
    cmp al,bl
    je equal
    
    inc si
    mov [si],00h  
    jmp eop
    
    equal:inc si
    mov [si],01h
    
    eop:mov ah,4ch
    int 21h
    
    code ends
end start