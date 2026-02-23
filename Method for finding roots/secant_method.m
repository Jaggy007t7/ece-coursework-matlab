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
