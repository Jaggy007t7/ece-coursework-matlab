f = @(x) cos(x)-x;
g = @(x) cos(x);
x0 = 0.5;
tol = 1e-6;
max_iter = 50;
iter=0;

while iter<=max_iter
    x1 = g(x0);
    error = abs(x0-x1);

    if error<tol
        break;

    end
x0 = x1;
end

fprintf('%.6f',x0);

% another code;
clc;
clear;
% Fixed point iteration method;
g = @(x) (1-x)^(1/3);   % <-- Go for hit and trial in this case,
% Initial approximation;
a = 0.5;
tol = 1e-6;

for iter=1:50
    y = g(a);
    if(abs(a-y)<tol)
        break;
    end
    a=y;
end

fprintf("%f %d",y,iter);
