function [ X ] = getRanStrNor()

    l=abs(floor(10+randn(1,1)*sqrt(5)));
    [p1,p2]=probabilidadeLetrasPT('pg21209.txt');
    i=0;
    for i=1:l
        idx=1+sum(rand(1,1)>cumsum(p1));
        X(i)=p2(idx);
    end
    
end