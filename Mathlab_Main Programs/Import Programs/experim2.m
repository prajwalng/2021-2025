% semilogx

% x = e^-t , y = t, 0<=t<=2*pi

t = linspace(0,2*pi,200) ;
x = exp(-t) ;
y = t ;
semilogx(x,y) , grid