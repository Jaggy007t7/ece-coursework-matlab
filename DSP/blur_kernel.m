clc;
clear;

% 3x3 Blur Kernel
kernel = [
    1 1 1;
    1 1 1;
    1 1 1
    ];

% Create HEX file
fid = fopen('blur_kernel.hex','w');

% Write kernel values
for i = 1:3
    for j = 1:3

        fprintf(fid,'%02X\n', kernel(i,j));

    end
end

fclose(fid);

disp('blur_kernel.hex created successfully');
