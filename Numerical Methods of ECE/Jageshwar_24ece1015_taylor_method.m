clc;
clear;

% Given function
f = @(x,y) x./y;

% Initial values
x0 = 0;
y0 = 1;
h = 0.2;
n = 4;

for i = 1:n
    
    % First derivative
    y1 = x0 / y0;
    
    % Second derivative
    y2 = (y0^2 - x0^2) / (y0^3);
    
    % Third derivative
    y3 = (-3*x0*y0^2 + x0^3) / (y0^5);
    
    % Fourth derivative
    y4 = (12*x0^2*y0^2 - 3*y0^4 - x0^4) / (y0^7);
    
    % Taylor expansion (4th order)
    y_new = y0 + h*y1 + (h^2/2)*y2 + (h^3/6)*y3 + (h^4/24)*y4;
    
    % Update values
    x0 = x0 + h;
    y0 = y_new;
end

fprintf('The result for x = %.2f is y = %.6f\n', x0, y0);

