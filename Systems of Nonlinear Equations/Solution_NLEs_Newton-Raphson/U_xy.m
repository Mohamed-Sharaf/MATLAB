function[u,du_dx,du_dy]=U_xy(x,y)
u=x^2+x*y-10;
du_dx=2*x+y;
du_dy=x;
end
