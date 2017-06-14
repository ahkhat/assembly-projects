.model small
.data

dizi db "bilgisayar"

.code
    mov ax,@data
    mov ds,ax
    mov es,ax
    cld;okuma soldan saga d bayragi 0
    mov al ,"i"; aranan al'de
    mov bl,"#";arananýn yerine konacak olan eleman
    mov cx,0010;sayac
    lea di,dizi; diziyi point et    

don:repne scasb;es:di ile al yi karsilastir
    jne cik ; esit degilse cik   
    mov [di-1],bl;esitse di'yi degistirilecek yere geri al mesela "l"de ise "i"ye geri al
    inc di;di yi bl'nin icindeki ile degistirdilten sonra di yi eski yerine geri aliyosun
    loop don   

cik:mov ah,4ch
    int 21h
    end    
    
        