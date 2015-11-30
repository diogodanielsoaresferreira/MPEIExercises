p = [0.3 0.2 0; 0.1 0.15 0.05; 0 0.1 0.1];

% Probabilidade Marginal
px=sum(p,2)
py=sum(p)

% Média
mx=sum(px.*[0 1 2]')
my=sum(py.*[0 1 2])

% Variância
varx=sum(px.*[0 1 4]')-(mx^2)
vary=sum(py.*[0 1 4])-(my^2)

% Correlação
corr=0;
for i=1:3
    for j=1:3
        corr = corr+p(i,j)*(i-1)*(j-1);
    end
end
corr

% Covariância
cov=corr-mx*my

% Coeficiente de correlação
coef=cov/(sqrt(varx)*sqrt(vary))