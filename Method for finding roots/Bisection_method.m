f = @(x) (x^3)-x-2;
a =1;
b =2;
tol = 1e-6;
max_iter = 50;
iter=0;

while iter<=max_iter
    % mid point;
    c = (a+b)/2;

    if abs(f(c)) < tol || (b - a) / 2 < tol
        break;
    end
    
    if f(a)*f(c)<0
        b=c;
    else 
        a=c;
    end
iter = iter+1;
end
root = c;
fprintf('%.6f,%d',root,iter);


