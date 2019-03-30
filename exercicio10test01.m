im2 = imread ('KAREN.jpg');
m = rgb2gray (im2);

x3=double(m);

t=ones(5,5)/25;
u=filter2(t,x3);

figure
imshow (m);
title('IMAGEM PADRÃO');

figure
u=uint8(u);
imshow(u);
title('IMAGEM FILTRADA - MASCARA 5X5');
