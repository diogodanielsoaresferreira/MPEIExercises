N=10000000;
lancamentos=rand(15,N)>0.5;
sucessos=sum(lancamentos)==6;
fabsol=cumsum(sucessos);
frel=fabsol./(1:N);

p=median (frel)
pt=comb_nk(15, 6)/2^15

plot(1:N,frel);