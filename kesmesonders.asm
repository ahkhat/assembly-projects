org 100h       

.model small 

.data 

    msg1 db "hello-world$"
    ad db 10 dup (?)    
    
.code  

    mov ax,@data
    mov ds,ax
    mov cx,0010 ; satir sutun baslangic

    mov ah,09h ;ekrana yazi yazma kesmesi
    lea dx,msg1 ;kurs�r neredeyse oraya datasegmentteki msg1'i yazar. Ekran yazi kesmesind ebu �ekilde
    int 21h ;dos kesmesi 

    lea si,ad ;ad'in datsegmentte baslangicini point etti

giris:
    mov ah,01h; klavyeden kesme ile veri girisi
    int 21h; dos kesmesi -->bios kesmeleri normade 10h ama kalvye grisleri s�z konusu ise 16h
    mov [si],al ; data segmentteki ad icin ayr�d���m�z yeri si nin bulundu�u adres i�ine yazabiliriz yani her yazd���m�z harf burya gelir
    inc si ; si'nin bulundu�u adres bir artt�r�ld� 2. harf gir�i i�in
    loop giris

    mov ah,4ch
    int 21h
end