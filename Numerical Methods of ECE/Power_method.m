clc;
clear;
% power method;
A = [1 -3 2;
     4 4 -1;
     6 3 5];

% Initial Guess;
x = [1;1;1];
disp(x);
k_old = 0;
for iter=1:50
    y = A*x;
    disp(y);
    k=max(abs(y));
    x = y/k;
    disp("Eigen Vector");
    disp(x);
    disp("Eigen Value");
    disp(k);

    if(abs(k-k_old)<1e-6)
        break;
    end
    k_old = k;
    
end
