clc; clear; close all

I = imread('rice.png');
BG = imopen(I, strel('disk', 15));
I2 = imsubtract(I, BG);
level = graythresh(I2);
BW = imbinarize(I2, level);
[labeled, numObjects] = bwlabel(BW, 8);

RGB_label = label2rgb(labeled);
imshow(RGB_label);