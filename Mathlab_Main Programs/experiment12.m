% 2-D curves as ribbons in 3-D.
% y1 = sin(t) ;
% y2 = exp(-.15*t) .*sin(t) ;
% y3 = exp(-.8*t) .*sin(t) ;
% for 0<=t<=5*pi

t = linspace(0,5*pi,100) ;
y1 = sin(t) ;
y2 = exp(-.15*t) .*sin(t) ;
y3 = exp(-.8*t) .*sin(t) ;
y = [y1; y2; y3] ;
%plot3(y1,y2,y3)
%stem3(y1,y2,y3,'filled')
rib_width = 0.2 ;
ribbon(t' ,y' ,rib_width)


