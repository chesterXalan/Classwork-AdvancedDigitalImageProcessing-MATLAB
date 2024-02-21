clc; clear; close all

I = imread('rice.png'); level = graythresh(I);
bw = im2bw(I, level);
subplot(121); imshow(bw);
BG = imopen(I, strel('disk', 15));
I2 = imsubtract(I, BG); level = graythresh(I2);
bw2 = im2bw(I2, level);
subplot(122); imshow(bw2);