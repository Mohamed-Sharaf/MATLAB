%% Gauss elimination
clear;clc;close all;
%%
m=3;
% A=rand(m,m);
% B=rand(m,1);
A=[3 -0.1 -0.2;0.1 7 -0.3; 0.3 -0.2 10];
B=[7.85; -19.3; 71.4];
C=[A B];

for k=1:m-1
    for h=k+1:m
        C(h,:)=C(h,:)-C(k,:)*C(h,k)/C(k,k);
    end
end
R=zeros(m,1);
s=0;
for g=m:-1:1
    R(g,1)=(C(g,m+1)-s)/C(g,g);
    s=0;
    for w=g:m
        if w==1 
            break;
        else
            s=s+C(g-1,w)*R(w,1);
        end
    end
end
disp(R);
error=(A*R-B);disp(error)
T=[];
for f=1:m
    t=[' x(' num2str(f) ')=' num2str(R(f,1)) ', '];
    T=[T t];
end
disp(['the solution is ' T ' using Gauss elimination'])