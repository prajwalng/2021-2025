% quiver
% z = x^2 + y^2 - 5sin(xy)
% |x| <= 2, |y| <= 2

r = -2:.2:2 ; 
[X,Y] = meshgrid(r,r) ;
Z = X.^2 - 5*sin(X.*Y) + Y.^2 ;
[dx,dy] = gradient(Z,.2,.2) ;
quiver(X,Y,dx,dy,2) ;