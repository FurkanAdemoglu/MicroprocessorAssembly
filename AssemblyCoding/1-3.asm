          

MOV AX, 100h
MOV DS, AX

MOV DS:0500h, 9Bh
MOV DS:0501h, 52h
                
MOV AX, 00h                
MOV AL, [0500h]
MOV AH, [0501h]
ADD AL, AH       

MOV DS:0502h, AL  

ret