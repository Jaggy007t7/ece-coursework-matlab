clc;
clear;
% Integration using Trapezium rule:-
f = @(x) x^2+x+1;
upper_limit = 1;
lower_limit = 0;
n = 100000;  % No. of intervals in which 
step_size= (upper_limit-lower_limit)/n;
h = step_size;
sum=f(upper_limit)+f(lower_limit);
i =1;
while(i<=n-1) 
    sum=sum+2*f(i*h);
    i=i+1;
end

integral = (step_size/2)*sum;
fprintf("%f",integral);


