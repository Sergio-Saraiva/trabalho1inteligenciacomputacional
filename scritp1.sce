clear;
clc;
//lê dados do arquivo
X = fscanfMat("C:\Users\sergi\Desktop\Trabalho1-IC\aerogerador.dat");

//separa os vetores x e y
y = X(:,2);
x = X(:,1);

//encontra o beta
X1 = [ones(2250,1)x];
b1 = inv(X1'*X1)*X1'*y;

//determina os valores de ybarra e ychapeu
ybarra=mean(y,'r');
ychap = X1*b1;

//determina o erro
e1 = y - ychap;

//plota os graficos
plot(x,y,"b*");
plot(x,ychap, "r-");

//determina o Coeficiente de determinação
SQe = sum(e1^2);
Syy = sum((y-ybarra)^2);
R1 = 1-(SQe/Syy);

//determina o R² ajustado
SQeAdj = SQe/(2250-2);
SyyAdj = Syy/(2250-1);
R2 = 1 - (SQeAdj/SyyAdj);

printf("O R² é: %f \n", R1);
printf(" O R² ajustado é: %f", R2);
