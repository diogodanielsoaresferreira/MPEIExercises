N=1000000;
Pecas=5;
p=0.3;
amostras=rand(5, N)<=0.3;
frel=sum(amostras);

hist(frel,5)

def3=sum((frel)==3)/N

def2=sum((frel)<=2)/N
