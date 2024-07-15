% plot y =e power(-0.4x)*sinx ,0<=x<=4x, taking
% 10,50,100 points in the interval.

x=linspace(0,4*pi,10);
y=exp(-.4*x).*sin(x);
plot(x,y)
x=linspace(0,4*pi,50);
y=exp(-.4*x).*sin(x);
plot(x,y)
x=linspace(0,4*pi,100);
y=exp(-.4*x).*sin(x);
plot(x,y)