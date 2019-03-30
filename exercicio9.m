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
% Elabore uma máscara 5x5 com todos os coeficientes para realce de linhas horizontais. Exibir os
% resultados da filtragem com essa máscara nas imagens KAREN.jpg, Barbara.jpg, e LENA_PB.tif.

close all
clear all

KAREN = imread('KAREN.jpg');
BARBARA =imread('BARBARA.jpg');
LENA =imread('LENA_PB.tif');

FPA = [0 0 0 0 0;
       0 0 0 0 0;
       1 1 -4 1 1;
       0 0 0 0 0;
       0 0 0 0 0];

imfiltrada_1 = imfilter(rgb2gray(KAREN),FPA,'circular');
imfiltrada_2 = 22+imfilter(rgb2gray(BARBARA),FPA,'circular');
imfiltrada_3 = (10+imfilter(LENA,FPA,'circular'));
   
figure
subplot(121);
imshow(KAREN);
title('KAREN');

subplot(122);
imshow(imfiltrada_1);
title('IMAGEN FILTRADA');

figure
subplot(121);
imshow(BARBARA);
title('BARBARA');

subplot(122);
imshow(imfiltrada_2);
title('IMAGEN FILTRADA');


figure
subplot(121);
imshow(LENA);
title('LENA');

subplot(122);
imshow(imfiltrada_3);
title('IMAGEN FILTRADA');

figure
imshow(KAREN);
