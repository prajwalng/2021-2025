% stem
% f = e^(-t/5) sint, 0<=t<=2*pi

t = linspace(0,2*pi,200) ; 
f = exp(-.2*t).*sin(t) ;
stem(t,f)