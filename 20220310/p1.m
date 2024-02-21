clc; clear; close all
I = imread('pout.tif');
I2 = histeq(I);
subplot(141); imhist(I)
subplot(142); imshow(I)
subplot(143); imhist(I2)
subplot(144); imshow(I2)