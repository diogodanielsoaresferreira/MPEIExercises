
function [ y ] = comb_nk (n, k)
% C�lculo de combina��es de n a k
% Par�metros de entrada: n; k

y=factorial(n)/(factorial(k)*factorial(n-k));

end
