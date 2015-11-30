function [ X ] = pmf( xi,pX,n )
    
    soma=cumsum(pX);
    for i=1:n
        idx=1+sum(rand(1,1)>soma);
        X(i)=xi(idx);
    end
    
    % Exercício TOS
    %X=ceil(interp1(soma,1:length(soma),rand(1,n)));
    
    
end
