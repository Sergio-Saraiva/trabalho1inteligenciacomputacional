clc;
clear;
X = fscanfMat("C:\Users\sergi\Desktop\Trabalho1-IC\aerogerador.dat");

y = X(:,2);
x = X(:,1);

ybarra = mean(y,'r');
xbarra = mean(x,'r');

b1 = (sum(x'*y)- (ybarra*sum(x)))/(sum(x^2)-(xbarra^2));
b0 = ybarra - b1*xbarra;

ychap = b0 + b1*x;

e = y - ychap;

reta = b0 + b1*x + e;

plot(x,y, "b*");

plot(y, reta, "r-");
