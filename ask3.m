
f = @(x) 1./(1+25*x.^2);
xp=linspace(-1,1,12);
yp= f(xp);

x=linspace(-1,1);
y=f(x);

yS=spline(xp,yp,linspace(-1,1));

plot(x,y,x,yS,'r--');
%plot(x,yL)
%plot(x,yS)