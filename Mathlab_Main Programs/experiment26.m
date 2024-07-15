Z = inline('cos(x).*cos(y).*exp(-sqrt((x.^2+y.^2)/4))') ;
ezcontourf(Z,[-5 5])