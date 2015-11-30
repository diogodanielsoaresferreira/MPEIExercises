% P= Área da probabilidade/área total
pmen3=3/10;
pmai7=3/10;
pentre1e6=5/10;

% Simulação
n=1e6;
x=rand(1,n)*10;
hist(x,100);
spmen3=sum(x<3)/n
spmai=sum(x>7)/n
spentre1e6=sum(x>1 & x<6)/n