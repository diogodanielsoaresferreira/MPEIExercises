function [ X ] = getRanStr()

    l=3+floor(rand(1,1)*18);
    abecedario= ['q','w','e','r','t','y','u','i','o','p','a','s','d','f','g','h','j','k','l','z','x','c','v','b','n','m'];
    i=0;
    for i=1:l
        idx=1+floor(rand(1,1)*26);
        X(i)=abecedario(idx);
    end
end

