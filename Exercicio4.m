%-------------------------------------------------------
%            UNIVERSIDADE ESTADUAL DO AMAZONAS
%-------------------------------------------------------
%             PROCESSAMENTO DIGITAL DE IMAGEM
%-------------------------------------------------------
% ALUNOS: Francisco L�cio R. de Ara�jo
%         Felipe Luniere
%         Mario Fernando
%         Rafael Augusto   
%       
% Para a imagem BARBARA02.PNG, elabore um script para filtrar o ru�do �salt and peper� e real�ar os
% contornos da imagem filtrada. Exibir na mesma figura a imagem com ru�do, imagem filtrada sem
% ru�do, imagem com apenas os contornos real�ados e imagem filtrada com realce das altas
% freq��ncias.


close all
clear all

FPA = [1 1 1 1 1;
       1 1 1 1 1;
       1  1 -24 1 1;
       1 1 1 1 1;
       1 1 1 1 1];

I1 = imread('BARBARA02.png');
I2 = medfilt2(rgb2gray(I1),[6 6]);
I3 = imfilter(I2,FPA,'circular');
I4 = I2+I3;


figure
subplot(221);
imshow(I1);
subplot(222);
imshow(I2);
subplot(223);
imshow(I3);
subplot(224);
imshow(I4);


