% S={5, 50, 100}
% p(5)=90/100
% p(50)=9/100
% p(1)=1/100

% Matriz com todos os resultados
cincoeur=ones(1,90)*5;
cinquentaeur=ones(1,9)*50;
cemeur=ones(1,1)*100;
total=[cincoeur,cinquentaeur,cemeur];

% Probabilidades calculadas
p5=sum(total==5)/length(total);
p50=sum(total==50)/length(total);
p100=sum(total==100)/length(total);

% Função distribuição de massa
stem([1 50 100],[p5 p50 p100]);
%ou
bar([1 50 100],[p5 p50 p100],1);

%Exercicio TOS
N=1e6;
a=zeros(1,N);
for e=1:N
    x=rand;
    if x<0.9
        a(e)=5;
    elseif x<0.99
        a(e)=50;
    else
        a(e)=100;
    end
end

b=[5*ones(1,90) 50*ones(1,9) 100];
b = b(1+floor(length(b)*rand(1,N)));