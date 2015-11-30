amostra=lcg(2^32,1013904223,4,1e6,1000);
hist(amostra,100);
totaldif=length(amostra)
uniquedif=length(unique(amostra))


amostra=lcg(5,13^13,92,2^59,1000);
totaldif=length(amostra)
uniquedif=length(unique(amostra))