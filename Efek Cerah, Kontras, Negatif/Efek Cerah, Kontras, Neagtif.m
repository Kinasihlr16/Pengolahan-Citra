image = imread ('C"/Users/ASUS/Downloads\1.JPG');
imshow (image);
cerah = (image + 90);
kontras=(2.5*image);
negatif=(255-image);
subplot (2,2,1); imshow (image); title ('Gambar Citra Asli);
subplot (2,2,2); imshow (cerah); title ('Gambar Citra Cerah);
subplot (2,2,3); imshow (kontras); title ('Gambar Citra Kontras);
subplot (2,2,4); imshow (Negatif); title ('Gambar Citra Negatif);