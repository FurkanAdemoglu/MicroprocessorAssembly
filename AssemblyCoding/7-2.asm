MOV AX, 0100h
MOV DS, AX
LEA BX, isim
MOV AH, 0Eh
MOV SI, 0000h 

Counter:
MOV AL, [BX+SI]
CMP AL, 0
JE EndCounter
INC SI
JMP Counter
EndCounter:

MOV CX, SI 
Dongu:
DEC SI
MOV AL, [BX+SI]
INT 10h
LOOP Dongu

MOV AH, 4Ch
INT 21h     

isim DB 'Abbas ELMAS',0