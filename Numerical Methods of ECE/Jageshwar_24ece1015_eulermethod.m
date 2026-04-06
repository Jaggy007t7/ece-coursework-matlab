clc;
clear;
f = @(x,y) x/y;
h = 0.2;
x0 = 0;
y0 = 1;

i=0;
n=4;
while(i<n)
    y1 = y0+h*f(x0,y0);
    x0=x0+h;
    y0=y1;
    i=i+1;
end

fprintf("The result for x=%f is %f",x0,y0);

