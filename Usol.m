function x = Usol(U,y)
n = length(y);
x=zeros(n,1);
for i=n:-1:1
    x(i)=y(i);
    for k=i+1:n
        x(i) = x(i) - U(i,k)*x(k);
    end
    x(i) = x(i)/U(i,i);
end