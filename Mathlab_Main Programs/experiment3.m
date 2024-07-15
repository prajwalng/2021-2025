% plot of 3-D contour lines of
%       z = -5/(1+x^2+y^2) ,    |x|<=3, |y|<=3.

r = linspace(-3,3,50) ;
[x,y] = meshgrid(r,r) ;
 z = -5./(1+x.^2+y.^2) ;
 contour3(x,y,z)
 
 % MATLAB provides a function meshgrid to create a
 % grid of points over a specified region.