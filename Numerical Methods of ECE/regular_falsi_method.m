% Implementation of Newton Raphson method;
clc;
clear;
f = @(x) x^4-x-2;
a=1;
b=2;
tol=1e-8;

for iter=1:100
    y = (a*f(b)-b*f(a))/(f(b)-f(a));

    if(abs(f(y))<tol)
        break;
    end
    if(f(a)*f(y)<0)
        b=y;
    else
        a=y;
    end
end

root = y;
fprintf("%f %d",root,iter);
