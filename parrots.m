%Borbon, John Mark
%BSCpE 4-1

close all;
clear all;
clc

pkg load image;

Parrots = imread('parrots.jpg');  % Read the image information
whos Parrots;                     % Show the ize of the image
subplot(121);
imshow(Parrots);                 % Display the original image
title('Original Image')

Parrots_gray = rgb2gray(Parrots);
subplot(122);
imshow(Parrots_gray);             % Display the image in Gray scale
title('RGB to GRAY');
imwrite(Parrots_gray,'Parrots_gray.png');




