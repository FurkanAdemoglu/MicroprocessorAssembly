;Set DS 0100h
MOV AX, 0100h
MOV DS, AX

;lets say 0100:1000h is 0ABh
MOV byte ptr[1000h], 0ABh

;program
CMP byte ptr[1000h], 0C2h
JE esit
MOV byte ptr[1100h], 0AAh
JMP bitis
esit:
MOV byte ptr[1100h], 0FFh
bitis:


;isletim sistemine donus
MOV AH, 4Ch
INT 21h