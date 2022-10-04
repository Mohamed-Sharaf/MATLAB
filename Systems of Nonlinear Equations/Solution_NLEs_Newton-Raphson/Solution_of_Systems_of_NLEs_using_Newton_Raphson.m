%% Solution of Systems of Nonlinear Equations using Newton-Raphson
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
    [u,du_dx,du_dy]=U_xy(xa,ya);
    [v,dv_dx,dv_dy]=V_xy(xa,ya);
    D=du_dx*dv_dy-du_dy*dv_dx;
    x=xa-((u*dv_dy-v*du_dy)/(D));                              % New X using Newton-Raphson Method   
    y=ya-((v*du_dx-u*dv_dx)/(D));                              % New Y using Newton-Raphson Method      
    ex_a=abs((x-xa)/x);                          % Relative error
    ey_a=abs((y-ya)/y);                          % Relative error
%     e_t=abs((x-x_true)/x_true);                 % True fractional relative error
    disp(['xa=' num2str(xa) ', x=' num2str(x) ', ya=' num2str(ya) ', y=' num2str(y) ', ex_a=' num2str(ex_a*100) '%, ey_a=' num2str(ey_a*100) '%' ]); % Display the result
    xa=x;                                      % New x(i-1) point
    ya=y;                                       % New x(i) point
end
disp(['The equation F(x,y)=0 root is x=' num2str(x)  ' and y=' num2str(y) ', estimated after ' num2str(itr) ' iterations'])

