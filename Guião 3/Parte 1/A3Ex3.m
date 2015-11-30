% a)
N=10;
p=0.5;

rand(1,N)<p;

% b)

p=ones(1,6)*1/6;
psum=cumsum(p);

for i=1:15
    cump(i)=1+sum(rand(1,1)>psum);
end

cump;

% c)
n=20;
amostra=(rand(1,n)*14)-4;
hist(amostra)
title('Utilização de randN')
axis([-4 10 0 8])