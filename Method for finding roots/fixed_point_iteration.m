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
