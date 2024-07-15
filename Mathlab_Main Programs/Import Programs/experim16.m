% compass
% z = costheta + isintheta,     -pi<=theta<=pi

th = -pi:pi/5:pi ;
zx = cos(th) ;
zy = sin(th) ;
z = zx + i*zy ;
compass(z)