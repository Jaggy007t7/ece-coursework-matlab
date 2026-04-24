clc;
clear;
tol = 1e-8;
% Initial guess;
x =0;
y=0;
z=0;

for iter=1:50
    x_new = 0.1*(11-y+z);
    y_new = 0.1*(13-2*x-z);
    z_new = 0.1*(14-2*x-3*y);

    if(abs(x-x_new)<tol && abs(y-y_new)<tol && abs(z-z_new)<tol)
        break;
    end

    x = x_new;
    y = y_new;
    z = z_new;

end
fprintf("%d \n",iter);
fprintf("x=%f, y=%f, z=%f",x_new,y_new,z_new);
