MOV [3000h],50h

MOV AL,[3000h]

SAR AL,02d      ; /4

MOV [1002h],AL

ret