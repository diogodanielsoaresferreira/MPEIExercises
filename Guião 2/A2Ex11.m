% Teoria (integração)
% int(-1 a 1 exp(-x^2/2))/sqrt(2*Pi)=68,4%
% int(-2 a 2 exp(-x^2/2))/sqrt(2*Pi)=95,4%
% int(-2 a 1000 exp(-x^2/2))/sqrt(2*Pi)=97,72%

% Simulação
N=1e6;
x=14+2*randn(1,N);

% Para me certificar de que está correto
media=mean(x);
variancia=var(x);

% Substituir nota dos alunos que teem maior do que 20
length(find(x>20));
x(find(x>20))=20;
max(x)

hist(x,100)

p12e16=sum(x>12 & x<16)/n
p10e18=sum(x>10 & x<18)/n
pmai10=sum(x>10)/n