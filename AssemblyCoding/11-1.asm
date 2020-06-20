MOV [1000h], -6 ;b
MOV [1001h], 9 ;c

MOV BL, 00h ;x
MOV CX, 0100h

dongu:
	MOV DX, 00h
	MOV AX, 00h

	MOV AL, BL
	IMUL BL
	MOV DX, AX ;DX=x2

	MOV AH, 00h
	MOV AL, [1000h]  ;b
	IMUL BL ;AX=bx
	ADD DX, AX ;DX= x2+b(x)

	MOV AL, [1001h]  ;c
	MOV AH, 00h ;AX=c
	ADD AX, DX ;AX= x2+bx+c

	CMP AX, 0000h
	JZ cozum
	INC BL
LOOP dongu

JMP bitis

cozum:
MOV [1500h], BX

bitis:
ret