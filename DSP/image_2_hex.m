clc;
clear;
close all;

%% Read Image
img = imread('image2.jpeg');   % Input image file

%% Get Image Size
[HEIGHT, WIDTH, CHANNELS] = size(img);

fprintf('Width  = %d\n', WIDTH);
fprintf('Height = %d\n', HEIGHT);

%% Open HEX File
fid = fopen('image.hex','w');

%% Write RGB Data
for y = 1:HEIGHT
    for x = 1:WIDTH
        
        % Extract RGB values
        R = img(y,x,1);
        G = img(y,x,2);
        B = img(y,x,3);

        % Write as hexadecimal
        fprintf(fid,'%02X\n', R);
        fprintf(fid,'%02X\n', G);
        fprintf(fid,'%02X\n', B);

    end
end

%% Close File
fclose(fid);

disp('HEX file generated successfully!');
