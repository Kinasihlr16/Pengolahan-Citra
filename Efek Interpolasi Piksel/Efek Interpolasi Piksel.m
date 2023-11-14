F=imread('Pictures\me.jpg');
[tinggi, lebar] = size(F);
sudut = 15; % Sudut pemutaran

rad = pi * sudut/180;
cosa = cos(rad);
sina = sin(rad);

F2 = double(F);
for y=1 : tinggi
    for x=1 : lebar    
     x2 = x * cosa + y * sina;        
     y2 = y * cosa - x * sina;        
     if (x2>=1) && (x2<=lebar) && ...
        (y2>=1) && (y2<=tinggi)
        % Lakukan interpolasi bilinear 
        p = floor(y2);
        q = floor(x2);
        a = y2-p;
        b = x2-q;

     if (x2 == lebar) || (y2 == tinggi)
         G(y, x) = F(floor(y2), floor(x2));
     else
         intensitas = (1-a)*((1-b)*F(p,q) +  ...
         b * F(p, q+1)) +      ...
         a *((1-b)* F(p+1, q) + ...
         b * F(p+1, q+1));

         G(y, x) = intensitas;
           end
        else   
           G(y, x) = 0;
        endif
    endfor
endfor

G=uint8(G);

figure
subplot(1,2,1); imshow(F); title('Gambar Citra Asli')

subplot(1,2,2); imshow(G); title('Gambar Citra yang telah diinterpolasi')