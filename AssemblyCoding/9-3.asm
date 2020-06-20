mov ax, 3456h
mov bx, 0EF12h
mov dx, 0ACBDh
mov cx, 4

dng2:
rol dx, 1
ror dx, 1
rcl ax, 1
rcl bx, 1
rcl dx, 1
loop dng2

ret