function cerinta5()
 
 A = imread("image3.gif");
 A = double(A);
 [m, n] = size(A);
 [Ak S] = cerinta3("image3.gif", min(m,n));
 for i=1:min(m,n)
  a(i) = i;
 endfor
 subplot(2,2,1);
 plot(a,diag(S));
 title('Grafic NR.1 -Vectorul diag(S)-')
 
  z(1) = 1;
  t(1) = S(1,1);
  k = 100;
  for i = 2:k
  z(i) = i;
  t(i) = t(i-1) +S(i,i);
 endfor
t = t./ sum(diag(S));
subplot(2,2,2);
plot(z,t);
title('Graficul NR.2 -Primele k valori singulare-')
 

i = 1;
for k= 180:2:200
  [Ak, S] = cerinta3("image3.gif",k);
  [h ,q] = size(Ak);
  w(i) = k;
  s(i) = 0;
  for x =1:h
      for y = 1:q
        s(i) = s(i)+(A(x,y) - Ak(x,y))^2 ;
       endfor
  endfor 
  i++;
  endfor
  s = s./(h*q)
  subplot (2,2,3);
  plot(w,s);
  title('Graficul NR.3 -Eroarea aproximarii-')
  
  i = 1;
  for k = 180:2:200
  w(i) = k;
  b(i) = 2*k +1/n;
  i++;
  endfor;
  subplot(2,2,4);
  plot(w,b);
  title('Graficul NR.4 -Rata de compresie a datelor-')
  
  print -djpg Grafic2_image3.jpg