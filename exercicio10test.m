close all
clear all

im1 = imread ('BARBARA02.png');
i = rgb2gray (im1);

x2=double(i);


j=ones(5,5)/25;
k=filter2(j,x2);

figure
imshow (i);
title('IMAGEM PADRÃO');

figure
k=uint8(k);
imshow(k);
title('IMAGEM FILTRADA - MASCARA 5X5');