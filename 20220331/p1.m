clc; clear; close all
I = imread('cameraman.tif');
I1 = impyramid(I, 'reduce');
I2 = impyramid(I1, 'reduce');
I3 = impyramid(I2, 'reduce');
figure, imshow(I);
figure, imshow(I1);
figure, imshow(I2);
figure, imshow(I3);