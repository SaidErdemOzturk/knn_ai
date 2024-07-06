function [hataOrani]= problem(nitelikAgirliklari)
    global testVeriSeti;
    
    dogruluk = 0;
    for i=1:size(testVeriSeti,1)
        success = sezgisel_k_nn(testVeriSeti(i,:),nitelikAgirliklari);
        dogruluk=dogruluk+success;
    end
    hataOrani = 1-((dogruluk)/size(testVeriSeti,1));
end





