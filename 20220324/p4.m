clc; clear; close all

I = imread('rice.png');
BG = imopen(I, strel('disk', 15));
I2 = imsubtract(I, BG);
BW = imbinarize(I2, graythresh(I2));
ObjI = bwselect(BW);
imshow(ObjI);