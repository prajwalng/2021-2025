% pcolor
% z = x^2 + y^2 - 5sin(xy)
% |x| <= 2, |y| <= 2

r = -2:.2:2 ; 
[X,Y] = meshgrid(r,r) ;
Z = X.^2 - 5*sin(X.*Y) + Y.^2 ;
pcolor(Z) , axis('off')
shading interp