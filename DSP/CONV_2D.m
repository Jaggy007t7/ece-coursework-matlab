% 2D-Convolution:-
img = imread('flower.jpg');
% Convert RGB image to grayscale
img1 = rgb2gray(img);

img2 = double(img1);  % Used to convert the image to suitable format for mathematical calculations.

%Filters:-
gaussian = fspecial('gaussian',[5,5],2);
motion = fspecial("motion",10,45);

%Perform 2d Convolution:-
conv_gaussian = conv2(img1,gaussian,'same');
imshow(conv_gaussian,[]);

% Learning:-
% Uint-8 means each pixel of 8 bits --> Means pixel values are from 0to255
% Double - convert image pixels to 2bit pixels.
% [] - We use this during imshow because automatically maps: minimum value → black maximum value → white and scales everything in between.So the image becomes properly visible.
