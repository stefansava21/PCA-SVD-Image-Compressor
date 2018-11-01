function [A] = cerinta1(image, k)

B = imread(image);
%B = double(image);
[m,n] = size (B);
[U S V] =svd(B);
A = U(1:m,1:k) * S(1:k,1:k) * V(1:n,1:k)';

endfunction