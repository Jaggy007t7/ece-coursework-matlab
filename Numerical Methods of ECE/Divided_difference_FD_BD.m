% Newton Divided Difference Formula;
x = [-1,2,4,5];
y = [-5,13,255,625];
n = length(x);
D = zeros(n,n);
D(:,1) = y';

for j=2:n
    for i=1:n-j+1
        D(i,j)=(D(i+1,j-1)-D(i,j-1))/(x(i+j-1)-x(i));

    end
end
disp("Divided Difference Table:")
disp(D);


D1 = zeros(n,n);
D1(:,1) = y';

for j=2:n
    for i=1:n-j+1
        D1(i,j)=(D1(i+1,j-1)-D1(i,j-1));

    end
end
disp("Forward/Backward Difference Table:")
disp(D1);
