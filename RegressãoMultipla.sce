clear;
clc;
D =   [122 139 0.115; 
       114 126 0.120; 
       086 090 0.105; 
       134 144 0.090; 
       146 163 0.100; 
       107 136 0.120; 
       068 061 0.105; 
       117 062 0.080; 
       071 041 0.100; 
       098 120 0.115];
       
       
x = [D(:,1) D(:,2)];
x1 = D(:,1);
x2 = D(:,2);
y = D(:,3);


ybarra = mean(y); 
betachap = inv(x'*x)*x'*y;
ychap = x*betachap;
e = ybarra - ychap;

plot3d(x1,x2,y,'*');

surf(x1,x2,ychap,'r-');

SQe = sum(e^2);
Syy = sum((y-ybarra)^2);
R1 = 1-(SQe/Syy);

SQeAdj = SQe/(2250-2);
SyyAdj = Syy/(2250-1);
R2 = 1 - (SQeAdj/SyyAdj);
