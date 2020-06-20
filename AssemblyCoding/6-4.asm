
MOV AX,0FFABh
MOV BL,0Ah

IDIV BL

MOV [500h], AL  
MOV [502h], AH

ret