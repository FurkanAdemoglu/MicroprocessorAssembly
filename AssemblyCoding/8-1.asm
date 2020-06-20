MOV [1000h],5h

MOV AL,[1000h]        
MOV AH,00h
MOV BX,AX   

SHL AX,04d      ;X16
SHL BX,01d      ;X 2

ADD AX,BX

MOV [1002h],AX

RET

