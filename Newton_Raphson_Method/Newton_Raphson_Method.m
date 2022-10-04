% % THE NEWTON-RAPHSON METHOD
% %%
% clear;clc;close all;
% x_true=fzero(@(x)F_(x),1);
% xa=0;
% itr=0;      % Iteration number
% tol=1e-6;   % Tolerance value
% N_max=20;   % Maximum allowable number of iteration
% e_a=1;      % Relative error
% while itr<N_max && e_a>tol                      % Iteration loop
%     itr=itr+1;                                  % Iteration increment 
%     x=xa-(F_(xa)/F1_(xa));                      % New X using Newoton-Raphson Method      
%     e_a=abs((x-xa)/x);                          % Relative error
%     e_t=abs((x-x_true)/x_true);                 % True fractional relative error
%     disp(['xa=' num2str(xa) ', x=' num2str(x) ', e_a=' num2str(e_a) '%, e_t=' num2str(e_t*100) '%' ]); % Display the result
%     xa=x;                                      % New x(i-1) point
% end
% disp(['The equation F(x)=0 root is x=' num2str(x) ', estimated using Newoton-Raphson method after ' num2str(itr) ' iterations with true fractional error of ' num2str(e_t*100) '%'])

clear all;
clc;
format short
Xo=2;
Ea=20;
while (Ea>.00001)
F0=(Xo^3)-Xo-1;
F1=(3*(Xo^2))-1;
    Xn=Xo-((F0)/(F1))
    Ea=abs((Xn-Xo)/Xn)*100
    Xo=Xn;
end 