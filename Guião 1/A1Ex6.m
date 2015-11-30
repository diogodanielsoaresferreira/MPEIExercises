N=1e6;
dados=2;
lados=5;

x=round(rand(dados,N)*lados);
pA=(sum(sum(x,1)==10))/N

b2=(x(1,:)==5 | x(2,:)==5);
pb=sum(b2)/N

ab=((x(1,:)==5 | x(2,:)==5) & (x(1,:)+x(2,:))==10);
pab=sum(ab)/N

%O mesmo para os outros...