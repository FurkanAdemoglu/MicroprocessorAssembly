;set DS 0100h
MOV AX, 0100h
MOV DS, AX

DIZI EQU 1500h
MOV BX, 0000h
MOV CX, 0100h
dongu:
MOV DIZI[BX], BL
INC BL
LOOP dongu
;isletim sistemine donus
MOV AH, 4Ch
INT 21h