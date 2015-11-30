% N1 = sort(round(14+randn(120,1)*sqrt(14/4)));
% N2 = sort(round(14*1.2+randn(120,1)*sqrt((14*1.2)/4)));
% 
% if min(N1)<min(N2)
%     minimo=min(N1);
% else
%     minimo=min(N2);
% end
% 
% if max(N1)>max(N2)
%     maximo=max(N1);
% else
%     maximo=max(N2);
% end
% 
% y=zeros(maximo-minimo+1,2);
% 
% for i=1:length(N1)
%     y(N1(i,1)-minimo+1,1)=y(N1(i,1)-minimo+1,1)+1;
% end
% 
% for i=1:length(N2)
%     y(N2(i,1)-minimo+1,2)=y(N2(i,1)-minimo+1,2)+1;
% end
% 
% stem(minimo:minimo+length(sum(y,2))-1,sum(y,2))
% 
% corrcoef(N1,N2)

N1 = round(14+randn(120,1)*sqrt(14/4)); 
N2 = round(14*1.2+randn(120,1)*sqrt((14*1.2)/4));

N1min = min(N1); N1max = max(N1); N2min = min(N2); N2max = max(N2);

y=zeros(N1max-N1min+1,N2max-N2min+1);

for i=1:length(N1)
    y(N1(i,1)-N1min+1,N2(i,1)-N2min+1)=y(N1(i,1)-N1min+1,N2(i,1)-N2min+1)+1;
end

stem3((N1min:N1max)'*ones(1,N2max-N2min+1),ones(N1max-N1min+1,1)*(N2min:N2max),y)

mcoef=corrcoef(N1,N2)

entropiaN1=0;
entropiaN2=0;

for i=1:length(N1)
    entropiaN1=entropiaN1+N1(i)*log2(1/N1(i));
    entropiaN2=entropiaN2+N2(i)*log2(1/N2(i));
end

entropiaconjunta=0;
[l,c]=size(y);
for i=1:l
    for j=1:c
        if y(i,j)~=0
            entropiaconjunta=entropiaconjunta+y(i,j)*log2(1/y(i,j));
        end
    end
end