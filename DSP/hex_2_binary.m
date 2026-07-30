%% parameters
width  = 1920;
height = 1080;
hexFile = 'frame_000001.hex';   % your hex file
csvFile = 'frame_000001.csv';

%% read all hex strings (one per line)
fid = fopen(hexFile, 'r');
if fid == -1
    error('Cannot open file %s', hexFile);
end
data = textscan(fid, '%s', 'Delimiter', '\n', 'Whitespace', '');
fclose(fid);
hexStrings = data{1};

nPixels = numel(hexStrings);
if nPixels ~= width * height
    warning('File has %d pixels, expected %d. Proceeding with available data.', nPixels, width*height);
end

% Pre-allocate binary column vector
binaryVec = zeros(nPixels, 1);

%% process each pixel
for i = 1:nPixels
    hexStr = strtrim(hexStrings{i});
    if numel(hexStr) ~= 6
        error('Invalid hex string at line %d: "%s"', i, hexStr);
    end
    R = hex2dec(hexStr(1:2));
    G = hex2dec(hexStr(3:4));
    B = hex2dec(hexStr(5:6));
    
    % Apply threshold logic
    if (R > 150) && (G < 100) && (B < 100) && (R > (B + 40))
        binaryVec(i) = 1;
    else
        binaryVec(i) = 0;
    end
end

%% write single‑column CSV (no header)
writematrix(binaryVec, csvFile);
fprintf('Binary column written to %s\n', csvFile);

%% display the binary image (reshape back to 2D)
binaryImg = reshape(binaryVec, [width, height])';
figure;
imshow(binaryImg);
title('Binary threshold output');
