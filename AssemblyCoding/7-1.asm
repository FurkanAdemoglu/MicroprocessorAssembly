; 1. soru
MOV AX, 0100h
MOV DS, AX

LEA BX, isim

MOV AH, 0Eh

DONGU:
MOV AL, [BX]
CMP AL, 0
JE BITIS
INT 10h
INC BX
JMP DONGU

BITIS:
MOV AH, 4Ch
INT 21h   


isim DB 'Abbas ELMAS', 0