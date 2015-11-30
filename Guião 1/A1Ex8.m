p=0.5;
N=10e6;
f=rand(2,N)<p;
nr=sum(f);

p1=sum(nr>=1)/N

p2=sum(nr==2)/sum(nr>=1)

f=rand(5,N)<p;
nr=sum(f);

p3=sum(nr>=1)/N
p4=sum(nr>=2)/sum(nr>=1)