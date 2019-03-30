
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
% Para as imagens 01 e 02, elabore um script para destacar as diferenças entre elas em branco. Exibir as
% imagens 01, 02, imagem diferença realçada e histograma da imagem diferença na mesma imagem.


close all
clear all

A = imread('imagem-01.tif');
B = imread('imagem-02.tif');

D = (B - A);
figure
subplot(131);
subimage(uint8(B));
title ('IMAGEM B');

subplot(132);
subimage(uint8(A));
title ('IMAGEM A');

subplot(133);
imshow(uint8(D));
title ('IMAGEM NEGATIVA');

%imtool(D); % ferramenta para ver pixel
D1 =im2bw(D,20/255);
figure
subplot(221);
imshow(D);
subplot(222);
imhist(D);
subplot(223);
imshow(D1);
subplot(224);
imhist(D1);
