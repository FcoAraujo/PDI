close all
clear all

I = imread('placa-02.jpg');
I1 = rgb2gray(I);
I2 =im2bw(I1,180/255);

%imtool(I1);

FPA =  [1 1 1;
       1 -8 1;
       1 1 1];

bordas = imfilter(I1,FPA,'circular');
   
figure
subplot(311);
imshow(I);
title('Imagem Padrão');

subplot(312);
imshow(I1);
title('Imagem Escala de Cinza');

subplot(313);
imshow(I2);
title('Limiarização');

figure
imshow(bordas);

 
 
 