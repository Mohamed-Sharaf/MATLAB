clear all; clc;
format long 
M=1e7;
X=pi*rand(1,M);
Y=2*sum(exp(-X.^2))*pi/M
Z=gamma(0.5)
