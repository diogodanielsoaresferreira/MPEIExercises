N=10000000;
lancamentos=rand(15,N)>0.5;
sucessos=sum(lancamentos)>=6;
fabsol=cumsum(sucessos);
frel=fabsol./(1:N);

p=median (frel)
pt=0;
for i=6:15
    pt=pt+comb_nk(15,i)/2^15
end


plot(1:N, frel);