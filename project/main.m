clc; clear; close all

im = imread('peppers.png');

mask = [13, 13]; % filter mask size
im_r = medfilt2(im(:, :, 1), mask); % R
im_g = medfilt2(im(:, :, 2), mask); % G
im_b = medfilt2(im(:, :, 3), mask); % B
im_p = cat(3, im_r, im_g, im_b); % concatenating RGB

im_lab = uint8(rgb2lab(im_p));
im_ab = cat(3, im_lab(:, :, 2), im_lab(:, :, 3)); % using AB channels

classes = 8; % number of clusters
L = imsegkmeans(im_ab, classes); % segmenting colors
im_q = labeloverlay(im_lab(:, :, 1), L); % drawing class maps

figure
subplot(1, 3, 1); imshow(im)
title('Original')
subplot(1, 3, 2); imshow(im_p)
title('Processed')
subplot(1, 3, 3); imshow(im_q)
title('Quantilized')

figure
[r, c] = size(L);
for cls=1:classes
    im_result = zeros(r, c, 3, 'uint8');
    for i=1:r
        for j=1:c
            if L(i, j) == cls
                im_result(i, j, :) = im(i, j, :); % getting original colors
            end
        end
    end
    subplot(3, 3, cls); imshow(im_result)
    title(['class = ', num2str(cls)])
end
