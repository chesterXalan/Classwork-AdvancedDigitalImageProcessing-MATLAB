clc; clear; close all

I = imread('cameraman.tif');
img = imnoise(I, 'salt & pepper', 0.02);

result = myHybridMedianFilter(img);

subplot(121); imshow(img)
subplot(122); imshow(result)
