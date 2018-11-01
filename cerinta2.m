function cerinta2()
  A = imread("image3.gif");
  [h, q] = size(A);
  k = 100
  W = cerinta1("image3.gif",k);
  [U S V] = svd(W);
  [m,n] = size(S);
  w = 0;
  for i = 1 : min(m,n)
   x(i) = i;
   y(i) = S(i, i);
   w = w + y(i);
  endfor
  
   
  subplot(2,2,1);
  plot(x, y);
  title('Graficul NR.1 -Toate valorile singulare-')
  
  z(1) = 1;
  t(1) = S(1,1);
  for i = 2:k
  z(i) = i;
  t(i) = t(i-1) +S(i,i);
 endfor
t = t./ w;

 
subplot(2,2,2);
plot(z,t);
title('Graficul NR.2 -Primele k valori singulare-')

i = 1;
for k= 180:2:200
  W = cerinta1("image3.gif",k);
  a (i) = k;
  s(i) = 0;
  for x =1:h
      for y = 1:q
        s(i) = s(i)+(A(x,y) - W(x,y))^2 ;
       endfor
  endfor 
  i++;
  endfor
  s = s./(h*q)
  subplot (2,2,3);
  plot(a,s);
  title('Graficul NR.3 -Eroarea aproximarii-')
  
  i = 1;
  for k = 180:2:200
  a(i) = k;
  b(i) = (m+n+1)*k/(m*n);
  i++;
  endfor;
  subplot(2,2,4);
  plot(a,b);
  title('Graficul NR.4 -Rata de compresie a datelor-')
  
  print -djpg Grafic1_image2.jpg