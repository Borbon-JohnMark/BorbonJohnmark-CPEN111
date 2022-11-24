%Borbon, John Mark
%BSCpE 4-1

clc;
clf;
clear all;
close all;
pkg load image;

Nature = imread('nature.jpg');  % Read the image
whos Nature;                    % Show the size of the image
imwrite(Nature, 'nature.png')

Nature_gray = rgb2gray(Nature); % Convert image to gray scale
whos Nature_gray;               % Show size of the gray image

Nature1=imread('nature.jpg');   % Read the original image
imwrite(Nature1,'nature.png');
Nature_red=Nature1;
Nature_red(:,:,2)=0;
Nature_red(:,:,3)=0;            % Conver image to red
imwrite(Nature_red,'nature_red.png');
Nature_green=Nature1;
Nature_green(:,:,1)=0;
Nature_green(:,:,3)=0;           % Conver image to green
imwrite(Nature_green,'nature_green.png');
Nature_blue=Nature1;
Nature_blue(:,:,1)=0;
Nature_blue(:,:,2)=0;           % Conver image to blue
imwrite(Nature_blue,'nature_blue.png');

subplot(2,2,1),imshow(Nature1),title('Original Image');% Display Original Image
subplot(2,2,2),imshow(Nature_red),title('Red Image');% Display Red Image
subplot(2,2,3),imshow(Nature_green),title('Green Image');% Display Green Image
subplot(2,2,4),imshow(Nature_blue),title('Blue Image');% Display Blue Image
