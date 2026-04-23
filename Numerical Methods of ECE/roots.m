% Bisection method:-
f = @(x) x^2 -3*x+1;
a = 0;
b = 1;
tol = 1e-6;
max_iter = 50;

fa = f(a);
fb = f(b);

if fa * fb >= 0
    error('Function has same sign at interval endpoints.');
end

iter = 0;
mid = (a+b)/2;  % initialize

while iter < max_iter
    mid = (a + b) / 2;
    fmid = f(mid);
    
    if abs(fmid) < tol || (b - a) / 2 < tol
        break;
    end
    
    if fa * fmid < 0
        b = mid;
        fb = fmid;
    else
        a = mid;
        fa = fmid;
    end
    
    iter = iter + 1;
end

root = mid;
fprintf('%f\n', root);
