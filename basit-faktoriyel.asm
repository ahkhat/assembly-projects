org 100h
.model small    

.code  
  
 mov ax,01
 mov bx,03;3!
 call faktoriyel
 mov cx,ax
 mov ah,4ch
 int 21h




faktoriyel proc 
    cmp bx,01
    je son 
    push bx;1 degilse yigina attik
    dec bx;   degeri bir azlalt ayni ilemleri tekrar yapiyoruz taki 1 e esit olana dek
   
    call faktoriyel
    pop bx    ; bx 1e esit olunca cekicez stackten. Push kadar pop islemi yapilir.
    mul bx  ;ax=ax*bx 
    ret
son: 
ret
end
    
 
 
 