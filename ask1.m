A = eye(7,7) + diag(2*ones(1,6),1) + diag(2*ones(1,6),-1) + diag(3*ones(1,5),2) + diag(3*ones(1,5),-2);
[L,U] = GE(A);

d=1;
x = diag(U);
for i=1:7
    d=d*x(i);
end
fprintf("Det: %f \n", d)

I=eye(7,7);
e1=I(1:7,1);
y1=Lsol(L,e1);
x1=Usol(U,y1);

e2=I(1:7,2);
y2=Lsol(L,e2);
x2=Usol(U,y2);

e3=I(1:7,3);
y3=Lsol(L,e3);
x3=Usol(U,y3);

e4=I(1:7,4);
y4=Lsol(L,e4);
x4=Usol(U,y4);

e5=I(1:7,5);
y5=Lsol(L,e5);
x5=Usol(U,y5);

e6=I(1:7,6);
y6=Lsol(L,e6);
x6=Usol(U,y6);

e7=I(1:7,7);
y7=Lsol(L,e7);
x7=Usol(U,y7);

ant=[x1 x2 x3 x4 x5 x6 x7];
disp(ant)
