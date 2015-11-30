% 7.1 Regra de Bayes
PpositivoDadoDoente = 0.9;
PpositivoDadoNaoDoente = 0.1;
Pdoente = 1/10000;
PmamogramaPositivo=PpositivoDadoDoente*Pdoente+PpositivoDadoNaoDoente*(1-Pdoente);
p=PpositivoDadoDoente*Pdoente/PmamogramaPositivo;

% 7.2
PpositivoDadoDoente = 0.9;
PpositivoDadoNaoDoente = 0.1;
Pdoente = 1/10000;
N=5e6; % gerar 5 Milhões de experiências (= mulheres)
doenca=rand(1,N)<Pdoente; %1 em 10000 aprox 500 em 5M
sim=sum(doenca);
teorico=N*Pdoente;

mamograma1 = doenca.*rand(1,N)<PpositivoDadoDoente;
mamograma2 = (1-doenca).*rand(1,N)<PpositivoDadoNaoDoente;

mamograma=mamograma1+mamograma2;
p=sum(mamograma)/(2*N)