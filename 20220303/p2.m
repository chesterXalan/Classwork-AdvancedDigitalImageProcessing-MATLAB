clc; clear; close all
img = imread('ngc6543a.jpg');
figure
subplot(221)
imshow(img)
subplot(222)
imshow(img(:, :, 1))
subplot(223)
imshow(img(:, :, 2))
subplot(224)
imshow(img(:, :, 3))
