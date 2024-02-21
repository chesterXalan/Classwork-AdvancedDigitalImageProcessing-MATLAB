clc; clear; close all
img = imread('ngc6543a.jpg');
[BW,maskedRGBImage] = createMask(img);
figure
subplot(121), imshow(BW)
subplot(122), imshow(maskedRGBImage)
