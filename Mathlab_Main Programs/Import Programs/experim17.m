% comet
% y = tsint, 0<=t<=10pi

q = linspace(0,10*pi,2000) ; 
y = q.*sin(q) ; 
comet(q,y)