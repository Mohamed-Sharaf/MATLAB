% Modefied Newton-Raphson Method
%%
clear;clc;close all;
xa=4;
x_true=fzero(@(x)F_(x),xa);
itr=0;      % Iteration number
tol=1e-6;   % Tolerance value
N_max=20;   % Maximum allowable number of iteration
e_a=1;      % Relative error
while itr<N_max && e_a>tol                      % Iteration loop
    itr=itr+1;                                  % Iteration increment 
    x=xa-((F_(xa)*F1_(xa))/(F1_(xa)^2-(F_(xa)*F2_(xa))));                      % New X using Newoton-Raphson Method      
    e_a=abs((x-xa)/x);                          % Relative error
    e_t=abs((x-x_true)/x_true);                 % True fractional relative error
    disp(['Iteration=' num2str(itr) ' xa=' num2str(xa) ', x=' num2str(x) ...
        ', e_a=' num2str(e_a*100) '%, e_t=' num2str(e_t*100) '%' ]); % Display the result
    xa=x;                                      % New x(i-1) point
end
disp(['The equation F(x)=0 root is x=' num2str(x) ', estimated using Newoton-Raphson method after ' num2str(itr) ...
    ' iterations with true fractional error of ' num2str(e_t*100) '%'])

