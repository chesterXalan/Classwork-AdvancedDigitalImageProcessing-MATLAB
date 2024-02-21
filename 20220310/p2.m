clc; clear; close all
pout = imread('pout.tif');
tire = imread('tire.tif');
[X, map] = imread('shadow.tif');
shadow = ind2rgb(X, map);

width = 210;
images = {pout, tire, shadow};
for k = 1:3
    dim = size(images{k});
    images{k} = imresize(images{k}, [width*dim(1)/dim(2) width], 'bicubic');
end
pout = images{1};
tire = images{2};
shadow = images{3};
pout_imadjust = imadjust(pout);
pout_histeq = histeq(pout);
pout_adapthisteq = adapthisteq(pout);
subplot(241); imshow(pout); title('Original')
subplot(242); imshow(pout_imadjust); title('Imadjust')
subplot(243); imshow(pout_histeq); title('Histeq')
subplot(244); imshow(pout_adapthisteq); title('Aapthisteq')

tire_imadjust = imadjust(tire);
tire_histeq = histeq(tire);
tire_adapthisteq = adapthisteq(tire);
subplot(245); imshow(tire); title('Original')
subplot(246); imshow(tire_imadjust); title('Imadjust')
subplot(247); imshow(tire_histeq); title('Histeq')
subplot(248); imshow(tire_adapthisteq); title('Adapthisteq')

figure; imhist(pout); title('pout.tif')
figure; imhist(tire); title('tire.tif')