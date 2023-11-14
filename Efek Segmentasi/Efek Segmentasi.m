pkg load image
I = imread('Pictures\me.jpg');
subplot(2,2,1),imshow(I),title('Original Image');
subplot(2,2,2),imhist(I),title('Histogram');
hasil = 1;
hasil(1>=120)= 255;
hasil(1<120)= 0;
figure, imhist(hasil);
120/255
ans=0.4706
hasil2=im2bw(1,0.47);
figure=imshow(hasil2);