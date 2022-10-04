%% Gauss-Jordan elimination
clear;clc;close all;
%%
m=3;
% A=rand(m,m);
% B=rand(m,1);
A=[3 -0.1 -0.2;0.1 7 -0.3; 0.3 -0.2 10];
B=[7.85; -19.3; 71.4];
C=[A B];

for k=1:m
    C(k,:)=C(k,:)/C(k,k);
    N=find((1:m)~=k);
    C(N,:)=C(N,:)-repmat(C(k,:),[m-1,1]).*repmat(C(N,k),[1,m+1]);
end
R=C(:,m+1);
disp(C);
error=(A*R-B);disp(error)
T=[];
for f=1:m
    t=[' x(' num2str(f) ')=' num2str(R(f,1)) ', '];
    T=[T t];
end
disp(['the solution is ' T ' using Gauss-Jordan elimination'])