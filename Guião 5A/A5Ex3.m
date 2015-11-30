T=zeros(20);

for i=1:20
    for j=1:20
        T(j,i)=rand;
    end
    T(:,i)=T(:,i)./sum(T(:,i));
end
sum(T);

x0=zeros(20,1);
x0(1,1)=1;

T20=(T^20)*x0;
sum(T20);
T20(20,1)

T40=(T^40)*x0;
sum(T40);
T40(20,1)

T100=(T^100)*x0;
sum(T100);
T100(20,1)