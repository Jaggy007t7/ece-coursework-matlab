clc;
clear;

% Given function
f = @(x,y) x./y;

% Initial values
x0 = 0;
y0 = 1;
h = 0.2;
n = 4;   % number of steps

for i = 1:n
    
    k1 = h * f(x0, y0);
    k2 = h * f(x0 + h/2, y0 + k1/2);
    k3 = h * f(x0 + h/2, y0 + k2/2);
    k4 = h * f(x0 + h, y0 + k3);
    
    y1 = y0 + (k1 + 2*k2 + 2*k3 + k4)/6;
    
    x0 = x0 + h;
    y0 = y1;
end

fprintf('The result for x = %.2f is y = %.6f\n', x0, y0);
