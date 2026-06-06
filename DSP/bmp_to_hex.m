img = imread('lena_gray.bmp');

if size(img,3)==3
    img = rgb2gray(img);
end

fid = fopen('image.hex','w');

for i = 1:size(img,1)
    for j = 1:size(img,2)

        fprintf(fid,'%02X\n',img(i,j));

    end
end

fclose(fid);
