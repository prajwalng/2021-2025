% z = cos(x) cos(y) e^-sqrt((x^2+y^2)/4)
%   |x|<=5 , |y|<=5

u = -5:.2:5 ;
[X,Y] = meshgrid(u, u) ;
Z = cos(X).*cos(Y).*... 
    exp(-sqrt(X.^2+Y.^2)/4) ;
surfc(Z)
shading interp
colormap hot