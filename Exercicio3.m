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
% Faça a leitura da imagem Boats e altere o brilho de modo que o histograma fique centralizado. Exibir
% as imagens com seus respectivos histogramas na mesma figura..


close all
clear all

A1 = imread('Boats.gif');
A2=A1+25;

figure
subplot(2,2,1);
imshow(A1);
title ('IMAGEM ORIGINAL');
subplot(2,2,2);
imhist(A1);
title ('HISTOGRAMA');
subplot(2,2,3);
imshow(A2);
title ('IMAGEM COM MAIOR BRILHO');
subplot(2,2,4);
imhist(A2);
title ('HISTOGRAMA CENTRALIZADO');


