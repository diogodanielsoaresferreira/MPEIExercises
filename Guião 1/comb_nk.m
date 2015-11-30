
function [ y ] = comb_nk (n, k)
% Cálculo de combinações de n a k
% Parâmetros de entrada: n; k

y=factorial(n)/(factorial(k)*factorial(n-k));

end
