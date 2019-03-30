
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
% Utilize as imagens 03 e 04, elabore um script para exibir os dois dentes problemáticos. Exibir a
% imagem final.

close all
clear all

A = imread('imagem-03.tif');

B = imread('imagem-04.tif');


B1= B/255;
D = (A .* B1);
figure
subplot(131);
subimage(uint8(A));
title ('IMAGEM A');
       
subplot(132);
subimage(uint8(B));
title ('IMAGEM B');

subplot(133);
imshow(uint8(D));
title ('IMAGEM D');