
mov ax,0100h
mov es,ax      
mov di,0300h    
                
mov ax, 0BCDEh    
mov cx, 128
rep stosw  

ret