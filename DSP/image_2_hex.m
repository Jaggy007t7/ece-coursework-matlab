clc; clear; close all;

% Read Image
img = imread('frame_000001.png');
[HEIGHT, WIDTH, ~] = size(img);
fprintf('Width  = %d\n', WIDTH);
fprintf('Height = %d\n', HEIGHT);

% Open HEX File
fid = fopen('frame_000001.hex','w');

% Combine R,G,B into a single 24‑bit integer per pixel (0xRRGGBB)
% Use uint32 to avoid overflow, and bitshift for speed.
R = uint32(img(:,:,1));
G = uint32(img(:,:,2));
B = uint32(img(:,:,3));
combined = bitshift(R, 16) + bitshift(G, 8) + B;   % same as R*65536 + G*256 + B

% Original nested loops wrote row‑major: (1,1), (1,2), ..., (2,1), (2,2), ...
% MATLAB's (:) flattens column‑major, so we transpose first to match.
combined_vec = reshape(combined', [], 1);   % row‑major order, one pixel per row

% Write all pixels at once – each line is a 6‑digit uppercase hex number.
fprintf(fid, '%06X\n', combined_vec);

fclose(fid);
disp('HEX file generated successfully! (one hex value per pixel)');
