MOV AX,100h;                    
MOV ES,AX        
MOV DI,0300h
                      
MOV AX, 0BCDEh   
MOV CX, 128    
CLD
REP STOSW         
  
MOV AX,100h                   
MOV DS,AX                  
MOV ES,AX             
MOV SI,0300h 
MOV DI,3500h;

MOV CX,128 
REP MOVSW                   
                   
RET
