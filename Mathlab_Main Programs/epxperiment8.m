%       z = sin^2 x+sin^2 y ,    |x|<=pi/2, |y|<=pi/2.

x = linspace(-pi/2,pi/2,50) ;
y =x ;
[x,y] = meshgrid(x,y) ;
 z = sin(x.^2)+sin(y.^2) ;
 %mesh(z)
 meshz(x,y,z) , axis tight
 view(-37.5,50)