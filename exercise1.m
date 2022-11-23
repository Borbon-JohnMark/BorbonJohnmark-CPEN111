close all;
clear all;
clc

pkg load image;

Original_Img = imread('fruits.png');  % Read the image information
subplot(231);
imshow(Original_Img);                 % Display the original image
title('Original Image')

% Change the resolution of the image
Original_Img1 = imresize(imresize(Original_Img,1/16),16);
subplot(232);
imshow(Original_Img1);                % Display the second image
title('at 16x16 resolution');
imwrite(Original_Img1,'fruits2.png');

chg_color = rgb2hsv(Original_Img);    % Change the colore image to HSV
subplot(233)
imshow(chg_color);                % Display converted version (HSV)
title('RGB to HSV');
imwrite(chg_color,'fruits3.png');



