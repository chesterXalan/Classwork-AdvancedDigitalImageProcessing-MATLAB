clc; clear; close all

cb = checkerboard;
xform = [1  0   0
         0  1   0
         40 40  1];
tform_translate = maketform('affine', xform);
cb_trans2 = imtransform(cb, tform_translate, ...
                        'XData', [1 (size(cb, 2)+xform(3, 1))], ...
                        'YData', [1 (size(cb, 1)+xform(3, 2))]);
subplot(121); imshow(cb)
subplot(122); imshow(cb_trans2)