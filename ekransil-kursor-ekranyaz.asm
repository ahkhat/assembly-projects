org 100h
.model small

.data
 yaz db "bla$"
.code
 mov ax,@data 
 mov ds ,ax
 Call ekransil
 call kursor
 call ekranyaz
 mov ah,4ch
 int 21h
ekransil proc near
 mov ax,0600h   ;ah<--06  yuklendi yukarý kaydirarak sil
 mov bh,41h   ;renk
 mov cx,0000h ;satir-sutun baslangici
 mov dx,184fh ; satir-sutun bitis  
 int 10h ;bios ekran silme kesmesi 
 Ret;ana programa geridon
ekransil endp

kursor proc near
 mov ah,02h;ah<--02 kursor konumlandirma kesmesi
 mov bh,00h;hangi sayfadan baslayacagi
 mov dx,1230h;satir-sutun koordinatlari
 int 10h;bios kesmesi
 ret
kursor endp

ekranyaz proc near
 mov ah,09h;ah<--09h ekrana yazý yazma kesmesi
 lea dx,yaz;kursor neredeyse oraya datasegmentteki msg1'i yazar. Ekran yazi kesmesind ebu sekilde 
 int 21h ;dos kesmesi 
 ret
 ekranyaz endp
end
 