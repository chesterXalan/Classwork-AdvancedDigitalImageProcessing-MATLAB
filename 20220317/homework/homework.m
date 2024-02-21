clc; clear; close all

pout = imread('pout.tif');
res = myTransform(pout, [-0.3 0.1], 10); % shearing and rotation

imshow(res);