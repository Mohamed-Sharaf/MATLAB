clear all; clc;
format long 
a = 1.2;
M = 1e7;
X = a*rand(1,M);
Y = (2/sqrt(pi))*sum(exp(-X.^2))*a/M
percentage_error = ((abs(erf(a)-Y))/erf(a))*100