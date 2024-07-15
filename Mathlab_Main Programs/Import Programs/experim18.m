% contour
% z = -1/5x^2 + xy + y^2
% |x| <= 5, |y| <= 5

r = -5:.2:5 ; 
[X,Y] = meshgrid(r,r) ;
Z = -.5*X.^2 + X.*Y + Y.^2 ;
cs = contour(X,Y,Z) ;
clabel(cs)