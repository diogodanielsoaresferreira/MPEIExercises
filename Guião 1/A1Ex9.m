% 9.1
N=1e6;
L=20;   %N de caras

A=round(rand(L,N));
Count=sum(sum(A)==L); %sum(A) é o nº de caras que calhou
P=Count/N

% alternativa

P=2^(-L);

% 9.2

P=1/2; % pois são independentes

%%inacabado