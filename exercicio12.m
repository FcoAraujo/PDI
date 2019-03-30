

close all
clear all

im = imread ('text.tif');
x=double(im);

t=ones(3,3)/9;
u=filter2(t,x);

figure
imshow(im);
title('IMAGEM PADRÃO');

figure
u=uint8(u);

brilho = 1.2;
contraste = 1.5;

y = u.*contraste;
y = u.*brilho;
imshow(y);
