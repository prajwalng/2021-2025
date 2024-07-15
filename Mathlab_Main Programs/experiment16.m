% Slices of the volumetric function
% f(x,y,z) = (cos(x).^2 + cos(y).^2 - z.^2) ;
% |x|<=3, |y|<=3, |z|<=3 at x = -2 and 2,
% y = 2, and z = -2.5 and 0.

v = [-3:.2:3] ;
[x,y,z] = meshgrid(v,v,v) ;
f =  (cos(x).^2 + cos(y).^2 - z.^2) ;
xv = [-2 2.5] ;
yv = 2 ;
zv = [-2.5 0] ;
slice(x,y,z,f,xv,yv,zv) ;

% The values of the function is indicated
% by the color intensity.