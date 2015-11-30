n=8000;
k=7;
p=1/1000;

% Calcular Poisson
alfa=n*p;
poisson=((alfa^k)/factorial(7))*exp(-alfa)

% Calcular binomial
m=n-k+1:n;
prod(n-k+1:n)/prod(1:k)*p^k*(1-p)^(n-k)

% Exercício TOS
n=100;
k=0:100;
p=1/10;
p=factorial(n)./(factorial(k).*factorial(n-k)).*p.^k.*(1-p).^(n-k);
bar(k,p)