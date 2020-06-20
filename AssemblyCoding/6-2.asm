
MOV AL, 0FEh
MOV BL,  10h
IMUL BL
MOV [400h],AX

ret