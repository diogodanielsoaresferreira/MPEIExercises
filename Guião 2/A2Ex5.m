p=0.01:0.01:1;

% 2 motores
a=zeros(100,1);
for i=1:100
    a(i)=p(i)^2;
end

plot(p,a)
hold on
% 4 motores
a=zeros(100,1);
for i=1:100
    a(i)=A2Ex5fun(4,3,p(i))+A2Ex5fun(4,4,p(i));
end

plot(p,a)
hold off
% ou calcular probabilidade teórica