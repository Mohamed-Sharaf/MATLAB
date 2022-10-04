clear all; clc;
a=5^5;
m=(2^31)-1;
c=0
n=1e4;
x(1,1)=32;
for i=1:n
    x(1,i+1)=mod((a*x(1,i)+c),m);
end
u=x/m;
[y1,x1]=hist(u,10);
dx=x1(2)-x1(1);
h=y1/n/dx;
bar(x1,h);
