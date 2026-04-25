% Root using bisection method;
f = @(x) x^3-x-2;
a=1;
b=2;
tol=1e-8;

max_iter=50;
for iter=0:max_iter
    mid = (a+b)/2;

    if(abs(a-b)<tol)   % <--- important condition for convergence
        break;
    end

    if(f(a)*f(mid)<0)
        b=mid;
    else
        a=mid;
    end
end
root =mid;
fprintf("%f %f",mid,iter);


% Regular falsi method;
clc;
clear;
f = @(x) x^4-x-2;
a=1;
b=2;
tol=1e-8;

for iter=1:100
    y = (a*f(b)-b*f(a))/(f(b)-f(a));

    if(abs(f(y))<tol)    % <--- important condition for convergence
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

% Secant Method;
f = @(x) x^3-x-2;
x0 =0;
x1 =2;
tol = 1e-6;
max_iter = 50;
iter = 0;

while iter<=max_iter
    x2 = x1 - f(x1)*(x1 - x0)/(f(x1) - f(x0));
    if abs(x2-x1)<tol
        break;
    end
x0 = x1;
x1 = x2;
iter = iter+1;
end

fprintf('%f',x2);
