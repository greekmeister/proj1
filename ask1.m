A = eye(7,7) + diag(2*ones(1,6),1) + diag(2*ones(1,6),-1) + diag(3*ones(1,5),2) + diag(3*ones(1,5),-2);
[L,U] = GEm(A);

d=1;
x = diag(U);
for i=1:7
    d=d*x(i);
end
fprintf("Det: %f", d)
