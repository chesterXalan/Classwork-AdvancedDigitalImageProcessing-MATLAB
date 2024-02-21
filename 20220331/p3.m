clc; clear; close all
gray_image = imread('peppers.png');
gray_image = rgb2gray(gray_image);
figure, imshow(gray_image);
F = fft2(gray_image);
S = fftshift(log(1+abs(F)));
figure, imshow(S, []);