clc; clear; close all
I = imread('eight.tif');
J = imnoise(I, 'salt & pepper', 0.05);
K = imnoise(I, 'gaussian', 0.1);
L = imnoise(I, 'poisson');
figure
subplot(221), imshow(I)
subplot(222), imshow(J)
subplot(223), imshow(K)
subplot(224), imshow(L)
