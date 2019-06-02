function y = Lsol(L,b)
n = size(L,1);
y=zeros(n,1);
for i=1:n
    y(i) = b(i);
    for k=1:i-1
        y(i) = y(i) - L(i,k)*y(k);
    end
    y(i) = y(i)/L(i,i);
end