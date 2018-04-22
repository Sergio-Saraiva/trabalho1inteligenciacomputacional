clear;
clc;
D =[122 139 0.115; 
       114 126 0.120; 
       086 090 0.105; 
       134 144 0.090; 
       146 163 0.100; 
       107 136 0.120; 
       068 061 0.105; 
       117 062 0.080; 
       071 041 0.100; 
        098 120 0.115];
x1 = D(:,1);
x2 = D(:,2);
y = D(:,3);
plot3d(x1,y,x2,"b*");