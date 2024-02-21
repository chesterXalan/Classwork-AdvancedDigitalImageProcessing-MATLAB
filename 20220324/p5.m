clc; clear; close all

I = imread('../image/dogs.jpg');
I = rgb2gray(I);
figure; imshow(I);
w = imread('../image/dogs_cropped.jpg');
w = rgb2gray(w);
figure; imshow(w);
[Icorr, iMaxRes, jMaxRes, c] = imcorr(I, w);