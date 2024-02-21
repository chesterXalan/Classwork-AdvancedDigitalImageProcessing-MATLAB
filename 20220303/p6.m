clc; clear; close all
I = imread('eight.tif');
J = imnoise(I, 'salt & pepper', 0.05);
K = medfilt2(J);
L = imgaussfilt(J, 2);
figure
subplot(221), imshow(I)
subplot(222), imshow(J)
subplot(223), imshow(K)
subplot(224), imshow(L)