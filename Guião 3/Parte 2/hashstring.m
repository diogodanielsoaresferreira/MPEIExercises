function [ X ] = hashstring(str, size)

    len=length(str);
    ihash=0;
    for i=1:len
       c=str(i)+33;
       ihash=((bitshift(ihash,3))+(bitshift(ihash,-28))+c);
    end
    X=rem(ihash,size);
end