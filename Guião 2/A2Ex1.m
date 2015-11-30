lados=6;
dados=1;
N=1e6;

px=floor(rand(dados,N)*(lados+1));

%Função probabilidade massa
prob=[sum(px==1)/N,sum(px==2)/N,sum(px==3)/N,sum(px==4)/N,sum(px==5)/N,sum(px==6)/N];

stem(1:6, prob)
hold on
%Funcão distribuição acumulada
acum=[0 cumsum(prob)];

stairs(0:6,acum)
hold off

% ou
subplot(2,1,1)
stem(1:6, prob)
subplot(2,1,2)
stairs(0:6, acum)