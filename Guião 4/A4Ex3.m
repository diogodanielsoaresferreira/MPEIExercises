X = round(10+sqrt(13)*randn(120,1));
Y = round(5+sqrt(13)*randn(120,1));
subplot(1,2,1)
hist(X,100)
subplot(1,2,2)
hist(Y,100)
figure(1)

figure(2)
Z = X+Y;
hist(Z,100)
var(Z)
