% loglog

% x = e^t , y = 100 + e^2t, 0<=t<=2*pi

t = linspace(0,2*pi,200) ;
x = exp(t) ;
y = 100 + exp(2*t) ;
loglog(x,y) , grid