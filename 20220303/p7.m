clc; clear; close all
I = imread('rice.png');
subplot(121), imshow(I)
J = immultiply(I, 1.5);
subplot(122), imshow(J)
