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
% Para a imagem BARBARA02.PNG, elabore um script para filtrar o ruído ‘salt and peper’ e realçar os
% contornos da imagem filtrada. Exibir na mesma figura a imagem com ruído, imagem filtrada sem
% ruído, imagem com apenas os contornos realçados e imagem filtrada com realce das altas
% freqüências.


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


