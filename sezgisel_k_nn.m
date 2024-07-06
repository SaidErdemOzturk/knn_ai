function [success] = sezgisel_k_nn(testVerisi, nitelikAgirliklari)
    global komsuSayisi;
    global veriSeti;
    global komsu;
    uzaklik_dizisi=Uzaklik_Hesapla(veriSeti,testVerisi,nitelikAgirliklari);
    %uzaklik_dizisi=Uzaklik_Hesapla_Normal(veriSeti,testVerisi);
    [komsu]=Komsu_Bul(komsuSayisi,uzaklik_dizisi,veriSeti(:,6));
    [sinif]=Sinif_Bul();
    if sinif.sinif == testVerisi(1,6)
        success = 1;
    else
        success = 0;
    end
end
