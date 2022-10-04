function[v,dv_dx,dv_dy]=V_xy(x,y)
v=y+3*x*y^2-57;
dv_dx=3*y^2;
dv_dy=1+6*x*y;
end