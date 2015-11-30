function [ y ] = A2Ex5fun(rodas, n, p)
    y=0;
    y=y+comb_nk(rodas,n)*p^n*(1-p)^(rodas-n);
    
end