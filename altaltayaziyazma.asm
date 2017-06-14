org 100h
.model small
.data
  msg1 db "ad-soyad:",13,10,"$" ;msg1 ve msg2 13,10 = /n
  msg2 db "yas:$"
 .code
  mov ax,@data
  mov ds,ax
  
  mov ah,09;ekrana yazi yazmasi icin dos kesmesi
  lea dx,msg1 
  int 21h   
  
  mov ah,09;ekrana yazi yazmasi icin dos kesmesi
  lea dx,msg2
  int 21h
  
  mov ah,4ch
  int 21h
  end