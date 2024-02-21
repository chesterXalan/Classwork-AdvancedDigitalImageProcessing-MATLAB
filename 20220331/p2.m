clc; clear; close all
I = imread('../image/dogs.jpg');
I = rgb2gray(I);
w = imread('../image/dogs_cropped.jpg');
w = rgb2gray(w);

I = double(I);
w = double(w);
[m, n] = size(I);
[m0, n0] = size(w);
F = fft2(I);
w = conj(fft2(w, m, n));
Ffilt = w .* F;
Icorr = real(ifft2(Ffilt));

c = sort(Icorr, 'descend');
[iMax, jMax] = find(Icorr == c(1));

figure, imshow(uint8(I));
hold on;
for ii=1:length(iMax)
    plot([jMax(ii), jMax(ii)+n0-1], [iMax(ii), iMax(ii)]);
    plot([jMax(ii)+n0-1, jMax(ii)+n0-1], [iMax(ii), iMax(ii)+m0-1]);
    plot([jMax(ii), jMax(ii)+n0-1], [iMax(ii)+m0-1, iMax(ii)+m0-1]);
    plot([jMax(ii), jMax(ii)], [iMax(ii), iMax(ii)+m0-1]);
end