clc; clear; close all
I = imread('rice.png');
J = imread('cameraman.tif');
K = imadd(I, J);
subplot(131); imshow(I)
subplot(132); imshow(J)
subplot(133); imshow(K)
