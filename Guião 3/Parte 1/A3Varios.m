% 4
%hist(Bernoulli(.3, 10000),(0:1)')
%axis([0 1 0 10000])

% 5
%hist(Binomial(20,0.5,1e6),20)

% 6
%xi=[1 2 3 4 5 6];
%pX=[0.15,0.1,0.25,0.2,0.25,0.05];
%n=10000;
%hist(pmf(xi,pX,n),length(xi))

% 7
%for i=1:3
%    subplot(3,2,i)
%    hist(sqrt(2)*BoxMuller(30)+14)
%    title('Box-Muller')
%    axis([10 20 0 15])
%    subplot(3,2,i+3)
%    hist(randn(1,30)*sqrt(2)+14)
%    title('RandN')
%    axis([10 20 0 15])
%end

% 8
%dist=sqrt(2)*BoxMuller(30)+14;
%subplot(1,2,1)
%hist(dist)
%title('Sem Rejeição')
%dist(dist<9 | dist>19)=[];
%subplot(1,2,2)
%hist(dist)
%title('Com rejeição')

%9
%[x,out]=hist(exponencial(0.5,1e5),20);
%subplot(1,2,1)
%plot(x,out);
%subplot(1,2,2)
%plot(out,x)

%10
%Totoloto(50,30)