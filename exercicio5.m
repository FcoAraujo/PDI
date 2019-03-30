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
% Para a imagem paisagem.jpg, analise o histograma da componente Y e elabore um script para
% distribuir em toda escala o contraste da imagem. Exibir a imagem final em cores, bem como os
% histogramas.

close all
clear all

I = imread('paisagem.jpg');
ycbcr = rgb2ycbcr(I);
y = ycbcr(:,:,1);
cb = ycbcr(:,:,2);
cr = ycbcr(:,:,3);

y1=(y-16).*1.25; % distribui o histograma em toda a escala.

ycbcr1 = cat(3,y1,cb,cr);
I1=ycbcr2rgb(ycbcr1);% reunir as componentes y, Cb, e Cr

figure
subplot(121);
title('Imagem Padrão');
imshow(I);
subplot(122);
title('Imagem com contraste');
imshow(I1);

figure
subplot(221);
title('Imagem em escala de cinzas');
imshow(y);
subplot(222);
imhist(y);
subplot(223);
imshow(y1);
subplot(224);
imhist(y1);