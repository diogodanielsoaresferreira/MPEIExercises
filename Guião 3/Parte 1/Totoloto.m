function [ X ] = Totoloto(Nbolas,Nsubconjunto)
    
    if Nsubconjunto>Nbolas
       Nsubconjunto=Nbolas; 
    end

    bol=zeros(1,Nbolas);

    for i=1:Nbolas
        bol(i)=i;
    end
    
    for i=1:Nsubconjunto
        indicebolaretirada=1+floor(rand(1,1)*Nbolas);
        X(i)=bol(indicebolaretirada);
        bol(indicebolaretirada)=[];
        Nbolas=Nbolas-1;
    end
    
end