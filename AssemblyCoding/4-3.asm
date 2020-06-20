MOV AX, 0100h
mov DS, AX
MOV BX, 1000h

MOV [BX],   2800h
MOV [BX+2], 0EE6Bh  ;4billion
MOV [BX+4], 9400h
MOV [BX+6], 7735h   ;2billion

MOV AX, [BX+2]
CMP AX, [BX+6]
JA Subtract
Adding: 
MOV AX, [BX]
ADD AX, [BX+4]
MOV [BX+8], AX
MOV AX, [BX+2]
ADC AX, [BX+6] 
MOV [BX+10], AX 
JMP ReturnToOS

Subtract: 
MOV AX, [BX]
SUB AX, [BX+4]
MOV [BX+8], AX
MOV AX, [BX+2]
SBB AX, [BX+6] 
MOV [BX+10], AX 

ReturnToOS: 
MOV AH, 4Ch
INT 21h