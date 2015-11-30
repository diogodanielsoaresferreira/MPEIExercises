n=1e6;
pcara=1/2;
prob=rand(4,n)<pcara;
ncoroas=sum(prob);

% C�lculo dos valores da vari�vel aleat�ria
vAl=zeros(1,5);
for i=1:5
    
    vAl(i)=sum(ncoroas==(i-1))/n;
    
end

% Distribui��o de probabilidade
bar(0:4,vAl);

% M�dia e vari�ncia
mean(ncoroas)
var(ncoroas)

% Distribui��o binomial.
% p(k)=comb_nk(4, k)*(1/2)^k*(1-1/2)^(4-k)
k=0;
p0=comb_nk(4, 0)*(1/2)^0*(1-1/2)^(4-0);
k=1;
p1=comb_nk(4, 1)*(1/2)^1*(1-1/2)^(4-1);
k=2;
p2=comb_nk(4, 2)*(1/2)^2*(1-1/2)^(4-2);
k=3;
p3=comb_nk(4, 3)*(1/2)^3*(1-1/2)^(4-3);
k=4;
p4=comb_nk(4, 4)*(1/2)^4*(1-1/2)^(4-4);

% p de obter pelo menos 2 coroas
pm2c=p2+p3+p4;
% p de obter at� 1 coroa
pa1=p0+p1;
% p de obter entre 1 e 3 coroas
pe13=p1+p2+p3;