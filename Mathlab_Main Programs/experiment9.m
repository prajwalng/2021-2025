%       z = -5/(1+x^2+y^2) ,    |x|<=3, |y|<=3.

x = linspace(-3,3,50) ;
y =x ;
[x,y] = meshgrid(x,y) ;
 z = -5./(1+x.^2+y.^2) ;
 waterfall(z)
 hidden off