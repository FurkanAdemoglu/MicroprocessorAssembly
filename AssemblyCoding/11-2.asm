MOV [2000h], 1174h
MOV AX,[2000h]
MOV CX,0010h
XOR DX,DX

dongu:
    SHL AX,1d
    JNC sifir
    INC DX
    sifir:
LOOP dongu

MOV byte ptr [1000h],00h
TEST DX,0001h
JNZ bitis
MOV byte ptr [1000h],11h
bitis:    

RET