N=10000000;
lancamentos=rand(3,N)>0.5;
sucessos=sum(lancamentos)==2;
fabsol=cumsum(sucessos);
frel=fabsol./(1:N);

p=median (frel)
pt=3/8

plot(1:N,frel);