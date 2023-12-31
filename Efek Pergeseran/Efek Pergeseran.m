F=imread('Pictures/1.jpg');
[tinggi, lebar] = size (F);

sx = 45; %Pergeseran Arah Horizontal
sy = -35 %Pergeseran Arah Vertikal

F2 = double(F);
G= zeros(size(F2));
for y=1 : tinggi
  for x=1 : lebar
    xlama =x-sx;
    ylama =y-sy;

  if(xlama>=1) && (xlama<=lebar) && ...
    (ylama>=1) && (ylama<=tinggi)
    G(y,x) = F2(ylama, xlama);
  else
    G(y,x)=0;
  endif
endfor
endfor

G=uint8(G);

figure
subplolt(1,2,1); imshow (F); title('Gambar Citra Asli')
subplolt(1,2,2); imshow (G); title('Gambar Citra yang telah di geserkan')