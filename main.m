clear
clc
global komsuSayisi;
global testVeriSeti;

verileriOku();
%komsuSayilari=[3,5,7,9,11,13,15,17,19];

komsuSayisi=3;
fprintf("Komşu Sayısı = %d ",komsuSayisi)
[bestSolution, bestFitness] = case_2();
basariSayisi = 0;
for i=1:length(testVeriSeti)
success = sezgisel_k_nn(testVeriSeti(i,:),bestSolution);
basariSayisi=basariSayisi+success;
end

fprintf("Başarı Oranı = ");
disp((basariSayisi)/length(testVeriSeti)*100)


   