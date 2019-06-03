function [L, U] = GE(A)
n=size(A,1);
for i=1:n-1
  A(i+1:n,i) = A(i+1:n,i)/A(i,i);
  A(i+1:n,i+1:n) = A(i+1:n,i+1:n) - A(i+1:n,i)*A(i,i+1:n);
end
L = eye(n)+tril(A,-1);
U = triu(A);