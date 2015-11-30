T= [0.7 0.2 0.3; 0.2 0.3 0.3; 0.1 0.5 0.4]

x0=[1 0 0];
T2=(T^2)*x0';
T2(3)

sol=zeros(20,1);
nuvens=zeros(20,1);
chuva=zeros(20,1);
for i=1:20
    Tn=T^i;
    sol(i,1)=sum(Tn(1,:))/3;
    nuvens(i,1)=sum(Tn(2,:))/3;
    chuva(i,1)=sum(Tn(3,:))/3;
end
subplot(1,2,1)
plot(1:20,sol,1:20,nuvens,1:20,chuva)

sol=zeros(1,1);
nuvens=zeros(1,1);
chuva=zeros(1,1);
dif=2;
last1=0;
last2=0;
last3=0;
for i=1:20
    Tn=T^i;
    if abs(((sum(Tn(1,:))/3)-last1))<(1e-4) & abs(((sum(Tn(2,:))/3)-last2))<(1e-4) & abs(((sum(Tn(3,:))/3)-last3))<(1e-4)
        break
    end
    
    last1=sum(Tn(1,:))/3;
    last2=sum(Tn(2,:))/3;
    last3=sum(Tn(3,:))/3;
    
    sol(i,1)=sum(Tn(1,:))/3;
    nuvens(i,1)=sum(Tn(2,:))/3;
    chuva(i,1)=sum(Tn(3,:))/3;
end
subplot(1,2,2)
plot(1:i-1,sol,1:i-1,nuvens,1:i-1,chuva)