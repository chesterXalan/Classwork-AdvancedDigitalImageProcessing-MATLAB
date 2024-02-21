clc; clear; close all

I = imread('rice.png');
BG = imopen(I, strel('disk', 15));
I2 = imsubtract(I, BG);
level = graythresh(I2);
BW = im2bw(I2, level);
[labeled, numObjects] = bwlabel(BW, 8);

[labeled_red, labeled_color] = paintLabel(labeled, numObjects);

subplot(121); imshow(labeled_red)
subplot(122); imshow(labeled_color)