% Root using bisection method;
f = @(x) x^3-x-2;
a=1;
b=2;
tol=1e-8;

max_iter=50;
for iter=0:max_iter
    mid = (a+b)/2;

    if(abs(a-b)<tol)
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
