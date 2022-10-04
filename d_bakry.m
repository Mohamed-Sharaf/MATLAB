a=5^5;                          % multiplication factor.

M=(2^63)-1;                     % modulus of the generator.
c=0;                            % increment factor.
N=1e2;  % No. of data samples --- try 1e2 , 1e3 , 1e4 , 1e6
x=zeros(1,N+1);                 % hold a space to fill
x(1,1)=12;                      % initial seed.
for i=1:N
x(1,i+1)=mod((a*x(1,i)+c),M);
end
U=x/M;
%% pdf test
[y1,x1]=hist(U,100);
dx=(x1(2)-x1(1));
h=(y1/N)/dx;
bar(x1,h);title('PDF for LCG)')