%% Solution of Systems of Nonlinear Equations using Fixed point 
%%
clear;clc;close all;
xa=1.5;
ya=3.5;
itr=0;      % Iteration number
tol=1e-6;   % Tolerance value
N_max=20;   % Maximum allowable number of iteration
ex_a=1;     % Relative error
ey_a=1;     % Relative error
while itr<N_max && (ex_a>tol || ey_a>tol)       % Iteration loop
    itr=itr+1;                                  % Iteration increment 
    x=U1_xy(xa,ya);                              % New X using Secant Method   
    y=V1_xy(x,ya);                              % New Y using Secant Method      
    ex_a=abs((x-xa)/x);                          % Relative error
    ey_a=abs((y-ya)/y);                          % Relative error
%     e_t=abs((x-x_true)/x_true);                 % True fractional relative error
    disp(['xa=' num2str(xa) ', x=' num2str(x) ', ya=' num2str(ya) ', y=' num2str(y) ', ex_a=' num2str(ex_a*100) '%, ey_a=' num2str(ey_a*100) '%' ]); % Display the result
    xa=x;                                      % New x(i-1) point
    ya=y;                                       % New x(i) point
end
disp(['The equation F(x,y)=0 root is x=' num2str(x)  ' and y=' num2str(y) ', estimated after ' num2str(itr) ' iterations'])

