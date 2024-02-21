clc; clear; close all

I = imread('rice.png');
subplot(131); imshow(I);
BG = imopen(I, strel('disk', 15));
subplot(132); imshow(BG);
I2 = imsubtract(I, BG);
subplot(133); imshow(I2);