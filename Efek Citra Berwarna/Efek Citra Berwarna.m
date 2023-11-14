clc;clear;close all;
 
I = imread('Pictures\me.jpg');
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
Red = cat(3,R,G*0,B*0);
Green = cat(3,R*0,G,B*0);
Blue = cat(3,R*0,G*0,B);
 
figure, imshow(I);
figure, imshow(Red);
figure, imshow(Green);
figure, imshow(Blue);
figure;

subplot(2,2,1);
imshow(I);
title('Original Image');

subplot(2,2,2);
imshow(Red);
title('Red Channel');

subplot(2,2,3);
imshow(Green);
title('Green Channel');

subplot(2,2,4);
imshow(Blue);
title('Blue Channel');