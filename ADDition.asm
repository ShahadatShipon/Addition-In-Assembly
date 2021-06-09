.model small
.stack 100h
.data

    msg1 DB 'Enter two numbers : $'
    msg2 DB 'The ADD value is : $'
    
.code
main proc
    
    mov AX,@data
    mov DS,AX
    
    ;print msg 1
    lea DX,msg1
    mov ah,09h
    int 21h
    
    ;input two value
    mov ah,1
    int 21h
    
    mov BL,AL
    int 21h
    
    mov BH,AL
    
    ;for add
    ADD BL,BH
    
    ;for print new line
    mov ah,2
    mov DL,0Ah
    int 21h
    mov DL,0DH
    int 21h 
    
    ;print msg 2
    lea DX,msg2
    mov AH,09h
    int 21h
    
    ;output add value
    mov ah,2 
    
    SUB BL,48
    
    mov DL,BL
    int 21h 
        
        
    mov ah,4ch
    int 21h
    end main
main endp    
        