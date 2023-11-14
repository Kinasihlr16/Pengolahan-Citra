F = imread('Pictures\me.jpg');

function G = taffine(F, a11, a12, a21, a22, tx, ty)

dimensi = size(F);
tinggi = dimensi(1);
lebar = dimensi(2);

for y=1 : tinggi
    for x=1 : lebar
        x2 = a11 * x + a12 * y + tx;
        y2 = a21 * x + a22 * y + ty;
        if (x2>=1) && (x2<=lebar) && ...
           (y2>=1) && (y2<=tinggi)

           % Lakukan interpolasi bilinear 
           p = floor(y2);
           q = floor(x2);
           a = y2-p;
           b = x2-q;

           if (floor(x2)==lebar) || ...
              (floor(y2) == tinggi)
              G(y, x) = F(floor(y2), floor(x2));
           else
              intensitas = (1-a)*((1-b)*F(p,q) +  ...
              b * F(p, q+1)) +      ...
              a *((1-b)* F(p+1, q) + ...
              b * F(p+1, q+1));

              G(y, x) = intensitas;
           endif
        else
           G(y, x) = 0; 
        endif
    endfor
endfor

G=uint8(G);

endfunction

 G = taffine(F,1,0.15,0,1,0,0);
  rad = 10 * pi / 180;
 G = taffine(F,cos(rad),sin(rad),  
 -sin(rad),cos(rad),0,0);

figure
subplot(1,2,1); imshow(F); title('Gambar Citra Asli');
subplot(1,2,2); imshow(G); title('Gambar Citra dengan Transformasi Affine');