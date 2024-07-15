% errorbar

% fapprox = x - x^3/3! , 0<=x<=2
%  error = fapprox - sinx

x = 0:.1:2 ;
aprx2 = x - x.^3/6 ;
er = aprx2 - sin(x) ;
errorbar(x, aprx2,er)