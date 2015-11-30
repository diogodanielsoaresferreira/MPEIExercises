%0.8=1000/1250
len=1250;
y=zeros(len+1,1);

for i=1:1000
    
    x=getRanStr();
    ihash=hashstring(x,len);
    z(i)=ihash;
    y(ihash+1)=y(1+ihash)+1;
    
end
subplot(2,2,1)
bar(1:1251,y)
axis([0 len+1 0 8])
title('N�mero de Strings para cada posi��o')

subplot(2,2,2)
hist(z);
axis([0 len+1 0 150])
title('Histograma dos n�meros gerados pelo hash')

prob=zeros(1,max(y)+1);

for i=1:length(y)
    prob(1,y(i)+1)= prob(1,y(i)+1)+1;
end
subplot(2,2,3)
bar(0:max(y),prob/len);
title('Fun��o probabilidade para n�mero de chaves por posi��o')
media=mean(y)
variancia=var(y)