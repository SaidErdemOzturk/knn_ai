function [] = verileriOku()
    global veriSeti;
    global testVeriSeti;
    veriSeti = xlsread('dataset.xlsx');
    testVeriSeti = xlsread('testVerileri.xlsx');
end
    