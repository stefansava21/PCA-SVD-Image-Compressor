function [Ak, S] = cerinta3(image, k)
  A = imread(image);
  A = double(A);
  [m, n] = size(A);
  for i= 1:m
    miu(i) = sum(A(i,1:n))/n;
    A(i,1:n) = A(i,1:n) - miu(i);
  endfor
    Z = A' ./sqrt(n-1);
    [U, S, V] = svd(Z);
    W(1:m,1:k) = V(1:m,1:k);
    Y = W' *A ;
    Ak = W * Y + miu';
    
 endfunction
