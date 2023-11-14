function pengecilancitra
clc
clear all
citra=imread('Pictures\me.jpg');
d=uint8(zeros(0,5,2,5));

for b_asli=1:512
    for k_asli=1:512
      temp=citra(b_asli,k_asli);
      for b_baru=1:2
        for k_baru=1:2
          dummyb=((b_asli-1)*2+b_baru);
          dummyk=((k_asli-1)*2+k_baru);
          d(dummyb, dummyk)=temp;
        end
     end
     d(dummyb, dummyk);
  end
endfor

imwrite(d, 'Pictures/me1.jpg');
citra_kompresi=imread('Pictures\me1.jpg');

figure
subplot(1,2,1); imshow(citra); title('Gambar Citra Asli')

subplot(1,2,2); imshow(citra_kompresi); title('Gambar Citra Pengecilan')