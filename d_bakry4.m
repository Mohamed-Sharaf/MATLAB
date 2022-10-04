clear all; clc;
format long 

M=1e6;
a=2;
b=5;
for i=1:M
    
    
x(1,i+1)=mod((a*x(1,i)),M);
Y=a+(b-a)*exp(-X^2);
plot(X,Y,'r','linewidth',2);

end
hold on