clc; clear; close all

im = imread('kobi.png');
im_gray = rgb2gray(im);

bw1 = im2bw(im_gray);
bw2 = im2bw(im_gray, 0.2);

subplot(131); imshow(im_gray)
subplot(132); imshow(bw1)
subplot(133); imshow(bw2)