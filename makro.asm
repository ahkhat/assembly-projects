org 100h
.model small
.code
uppercase macro ch  ;makrolar degisken alabilir  al-->ch
    local cik    ;makroda etiket var
    cmp ch,'a'; a ile ch assemly sayilari kiyaslandi 
    jb cik   ;ch a nin altinda degerde ise cik 
    cmp ch,'z'
    ja cik   ch; z nin ustunde degerde ise cik
    sub ch,32  ;  girilen kücük harften 32 cikarsa buyuk harf olur
 
cik:
uppercase endm


    


mov al,'a';b icin bu islemleri yap  
uppercase al;makro cagrildi

 
mov ah,4ch 
int 21h
end