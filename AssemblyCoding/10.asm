
MOV AX, 0100h
MOV DS, AX
JMP DEVAM
k1 DB 'Hello ',10,13,0
k2 DB 'World! ',10,13,0
DEVAM:

LEA BX, k1
CALL KucukYaz
LEA BX, k2
CALL BuyukYaz

MOV AH, 4Ch
INT 21h

;Procedure Yazdir
Yaz PROC
	PUSH AX
	PUSH BX
	PUSHF
	MOV AH, 0Eh
	DONGU:
		MOV AL, [BX]
		CMP AL, 0
		JE SON
		INT 10h
		INC BX
	JMP DONGU
	SON:
	POPF
	POP BX
	POP AX
	RET
Yaz ENDP

BuyukYaz PROC
		PUSH AX
		PUSH BX
		PUSHF
		MOV AH, 0Eh
		DONGU2:
			MOV AL, [BX]
			CMP AL, 0
			JE SON2
			CMP AL, 97
			JB YAZDIRB
			CMP AL, 122
			JA YAZDIRB
			SUB AL, 32
			YAZDIRB:
			INT 10h
			INC BX
		JMP DONGU2
		SON2:
		POPF
		POP BX
		POP AX
		RET
BuyukYaz ENDP

KucukYaz PROC
		PUSH AX
		PUSH BX
		PUSHF
		MOV AH, 0Eh
		DONGU3:
			MOV AL, [BX]
			CMP AL, 0
			JE SON2
			CMP AL, 65
			JB YAZDIRK
			CMP AL, 90
			JA YAZDIRK
			ADD AL, 32
			YAZDIRK:
			INT 10h
			INC BX
		JMP DONGU3
		SON3:
		POPF
		POP BX
		POP AX
		RET
KucukYaz ENDP