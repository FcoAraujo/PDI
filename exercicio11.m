%-------------------------------------------------------
%            UNIVERSIDADE ESTADUAL DO AMAZONAS
%-------------------------------------------------------
%             PROCESSAMENTO DIGITAL DE IMAGEM
%-------------------------------------------------------
% ALUNOS: Francisco Lúcio R. de Araújo
%         Felipe Luniere
%         Mario Fernando
%         Rafael Augusto   
%       
% Para a imagem abaixo (dedo.tif) elabore um script de um filtro para destacar a digital filtrando as
% manchas de gordura e depois faça a binarização da imagem filtrada.

close all
clear all

im1 = imread ('dedo.tif');

x1=double(im1);

FPA = [1 1 1;
       1 -8 1;
       1 1 1];
J = imcomplement(im1);
figure
imshow(J);
J = imfilter(im1,FPA,'circular'); 
J1= uint8(J);


%figure
%imshow(im1);
%title('IMAGEM PADRÃO');

%I = imread('dedo.tif');
%J = imcomplement(im1);

%figure
%imshow(J);
%title('IMAGEM FILTRADA');

p = imread('dedo.tif');
LIMIAR = 25;
[RES_VERT,RES_HOR]=size(p);

imagem_final(1:RES_VERT,1:RES_HOR)=0;
objeto=find(p > LIMIAR);
imagem_final(objeto)=255;

I2 = im2bw((im1-J), 100/200);

figure
subplot(131)
imshow(im1);
title('IMAGEM PADRÃO');

%figure
subplot(132)
imshow(im1-J);
title('IMAGEM FILTRADA');

%figure
subplot(133)
imshow(I2);
title('IMAGEM FINAL');
%imtool(I2);
