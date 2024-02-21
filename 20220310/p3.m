clc; clear; close all
I = imread('toysflash.png');
srgb2lab = makecform('srgb2lab');
lab2srgb = makecform('lab2srgb');
I_lab = applycform(I, srgb2lab);
max_luminosity = 10;
L = I_lab(:,:,1)/max_luminosity;

I_imadjust = I_lab;
I_imadjust(:,:,1) = imadjust(L)*max_luminosity;
I_imadjust = applycform(I_imadjust, lab2srgb);
I_histeq = I_lab;
I_histeq(:,:,1) = histeq(L)*max_luminosity;
I_histeq = applycform(I_histeq, lab2srgb);
I_adapthiseq = I_lab;
I_adapthiseq(:,:,1) = adapthisteq(L)*max_luminosity;
I_adapthiseq = applycform(I_adapthiseq, lab2srgb);

subplot(221); imshow(I); title('Original')
subplot(222); imshow(I_imadjust); title('Imadjust')
subplot(223); imshow(I_histeq); title('Histeq')
subplot(224); imshow(I_adapthiseq); title('Aapthisteq')