% alfa tamb�m � o valor m�dio
alfa=15;
k=0:100;
p=alfa.^k./factorial(k)*exp(-alfa);

pnrecebe=sum((k==0).*p);
