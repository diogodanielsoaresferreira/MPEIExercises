N=10000;
m=100;
nn=2:m;
pp=0*nn;
for i=1:length(nn)  % de 2 a 100 alvos
  n=nn(i);
  x=sort(floor(rand(n,N)*m)); %alvos atingidos por experiencia
  y=x(1:end-1,:)==x(2:end,:); % Ver se o alvo foi atingido
  y=sum(y,1);                 % Soma por coluna do numero de vezes que o alvo foi atingido
  pp(i)=sum(y==0)/N;
end
plot(nn,pp);