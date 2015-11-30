n=1e6;
pecas=5;
p=0.3;

amostra=rand(5,n)<=p;
sumam=sum(amostra);
hist(sumam,5)

p=sum(sumam<=2)/n