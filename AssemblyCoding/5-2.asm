MOV AX,0100h
MOV ES,AX    
MOV DS,AX  
MOV DI,0300h   
MOV SI,0300h
                
MOV AX, 0BCDEh 
MOV CX, 128    
CLD
REP STOSW  
 
MOV SI,0300h
MOV DI,0300h  
MOV CX, 128    
MOV DX, 1234h

dongu:
LODSW
SUB AX,DX
STOSW
LOOP dongu
            
RET