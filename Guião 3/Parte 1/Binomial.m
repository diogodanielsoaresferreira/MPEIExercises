function [ X ] = Binomial( n,p,N )
    Bern=rand(n,N)<=p; % n Bernoulli(p)
    X=sum(Bern);

end

