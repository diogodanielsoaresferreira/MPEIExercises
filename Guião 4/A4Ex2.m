p = [1/8 1/8 1/24; 1/8 1/4 1/8; 1/24 1/8 1/24];

px=sum(p,2)
py=sum(p)

% Variáveis indepententes
indep = true;
for i=1:3
    for j=1:3
        if abs(px(i,1)*py(1,j)-p(i,j))<1e-12
            indep=false;
            break;
        end
    end
end
indep

% X^2 e Y^2
p2 = [p(2,2) p(2,1)+p(2,3);p(1,2)+p(3,2) p(1,1)+p(1,3)+p(3,1)+p(3,3)]
p2x=sum(p2,2)
p2y=sum(p2)

indep = true;
for i=1:2
    for j=1:2
        % Not Equal(~=) não funciona, pois compara dois floating point que,
        % apesar de próximos, são para o MatLab diferentes.
        % Neste caso, usar diferença de valores absolutos maior
        % que tolerância (um valor pequeno).
        if abs(p2x(i,1)*p2y(1,j)-p2(i,j))>1e-12
            indep=false;
            break;
        end
    end
end
indep

% Momento de ordem 2
mom2x=sum(p2x.*[0 1]')
mom2y=sum(p2y.*[0 1])

% Momento de ordem 3
mom3x=sum(px.*[-1^3 0 1^3]')
mom3y=sum(py.*[-1^3 0 1^3])

% Momento de ordem 2 e 3 para Z
mom2z=sum(px.*[sqrt((-1+4))^2 sqrt((0+4))^2 sqrt((1+4))^2]')
mom3z=sum(px.*[sqrt((-1+4))^3 sqrt((0+4))^3 sqrt((1+4))^3]')
