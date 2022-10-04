%% Secant Method
% approximate the derivative by its finite difference
% the method requires two points to start.
%%
clear;clc;close all;
x_true=fzero(@(x)F_(x),1);
xa=0;
xb=1;
itr=0;      % Iteration number
tol=1e-6;   % Tolerance value
N_max=20;   % Maximum allowable number of iteration
e_a=1;      % Relative error
while itr<N_max && e_a>tol                      % Iteration loop
    itr=itr+1;                                  % Iteration increment 
    x=xb-(F_(xb)*(xa-xb)/(F_(xa)-F_(xb)));      % New X using Secant Method      
    e_a=abs((x-xb)/x);                          % Relative error
    e_t=abs((x-x_true)/x_true);                 % True fractional relative error
    disp(['xa=' num2str(xa) ', xb=' num2str(xb) ', x=' num2str(x) ...
        ', e_a=' num2str(e_a*100) '%, e_t=' num2str(e_t*100) '%' ]); % Display the result
    xa=xb;                                      % New x(i-1) point
    xb=x;                                       % New x(i) point
end
disp(['The equation F(x)=0 root is x=' num2str(x) ', estimated after ' num2str(itr) ' iterations with true fractional error of ' num2str(e_t*100) '%'])

