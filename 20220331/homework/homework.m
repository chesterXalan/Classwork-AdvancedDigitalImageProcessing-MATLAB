clc; clear; close all
I = imread('image/dogs.jpg');
w = imread('image/dogs_cropped.jpg');
I = rgb2gray(I);
w = rgb2gray(w);
I_original = I;

time_s = 3; % <--- pyramid
summ = 0;
while summ < time_s
    I = impyramid(I, 'reduce');
    w = impyramid(w, 'reduce');
    summ = summ+1;
end

tic
[Icorr, iMaxRes, jMaxRes, c] = imcorr(I, w, I_original, time_s);
toc
