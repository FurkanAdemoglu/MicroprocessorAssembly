
MOV AX, 0ABh
MOV BX, 0Ah
DIV BL  
MOV [500h], AL
MOV [502h], AH

ret