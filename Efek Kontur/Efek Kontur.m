I = imread('Pictures\me.jpg');
bw=im2bw(I);
reg=regionprops(bw,'all');
area_conv=reg.ConvexArea;
area_obj=reg.Area;
solidity=area_obj/area_conv
reg.Solidity
imshow(bw);