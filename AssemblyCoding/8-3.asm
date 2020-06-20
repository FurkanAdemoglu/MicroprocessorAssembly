MOV [3000h],0F800h

MOV AX,[3000h]    
MOV BX,0001000000000000b

dongu:
    TEST AX,BX
    JZ bitis
    SHR AX,1d
JMP dongu
       
bitis:
                       
RET
