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
    lea dx,msg1 ;kursör neredeyse oraya datasegmentteki msg1'i yazar. Ekran yazi kesmesind ebu þekilde
    int 21h ;dos kesmesi 

    lea si,ad ;ad'in datsegmentte baslangicini point etti

giris:
    mov ah,01h; klavyeden kesme ile veri girisi
    int 21h; dos kesmesi -->bios kesmeleri normade 10h ama kalvye grisleri söz konusu ise 16h
    mov [si],al ; data segmentteki ad icin ayrýdýðýmýz yeri si nin bulunduðu adres içine yazabiliriz yani her yazdýðýmýz harf burya gelir
    inc si ; si'nin bulunduðu adres bir arttýrýldý 2. harf girþi için
    loop giris

    mov ah,4ch
    int 21h
end