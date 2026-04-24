% Implementation of Newton Raphson method;
clc;
clear;
f = @(x) x^2-2*x+1;
diff_x = @(x) 2*(x)-2;
x0 = 1.3;
tol=1e-8;
for iter=1:50
    x = x0-(f(x0)/diff_x(x0));
    if(abs(x-x0)<tol)
        break;
    end
    x0=x;
end
root = x;
fprintf("%f %f",root,iter);
