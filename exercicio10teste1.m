im = imread ('LENA_PB.tif');

x1=double(im);

h=ones(5,5)/25;
y=filter2(h,x1);

figure
imshow (im);
title('IMAGEM PADR�O');

figure
y=uint8(y);
imshow(y);
title('IMAGEM FILTRADA - MASCARA 5X5');