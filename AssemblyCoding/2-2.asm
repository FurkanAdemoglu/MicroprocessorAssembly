
MOV AX, 0100h 
MOV DS,AX
MOV SI,1000h
             
MOV AX,0300h            
MOV ES,AX
MOV DI,1000h

MOV CX,0100h

dongu:
MOV AX, DS:SI
INC AX
MOV ES:DI,AX
ADD DI,2
ADD SI,2              
LOOP dongu

RET