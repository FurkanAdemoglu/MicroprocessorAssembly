           
MOV AL, 0FEh
MOV BL, 10h
MUL BL
MOV [400h],AX

RET