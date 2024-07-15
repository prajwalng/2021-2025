% stairs
% r2 = 2sin5t, 0,=t<=2*pi          y = rsint

t = linspace(0,2*pi,200) ; 
r = sqrt(abs(2*sin(5*t))) ; 
y = r.*sin(t) ;
stairs(t,y)
axis([0 pi 0 inf]) ;