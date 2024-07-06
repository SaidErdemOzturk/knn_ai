
function [ uzaklik_dizisi] = Uzaklik_Hesapla(veri_seti,yeni_veri,nitelikAgirliklari)
    [ornek_sayisi,ozellik_sayisi]=size(veri_seti);
    %uzaklik_dizisi
    
    for i=1:ornek_sayisi
    toplam=0;
        for j=1:ozellik_sayisi-1
        toplam=toplam+nitelikAgirliklari(j)*(veri_seti(i,j)-yeni_veri(1,j))^2;
        end
        uzaklik_dizisi(i)=sqrt(toplam);
    end
end
