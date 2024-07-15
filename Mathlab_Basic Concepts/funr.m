function f = funr(r);
%FUNR evaluates function f = r^3-32 r^2+(r-22)r+100.
%r = input('enter the value of r=');
%r=3;
f = 2*r^3 - 32*r^2 + (3*r-22)*r + 100 ;
r0 = fzero('funr',5) ;