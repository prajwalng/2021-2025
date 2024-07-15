% Discrete data plot with stems.
%           x = t , y = t(sint) , z = e^(t/10) - 1
%               for 0<=t<=6*pi.

t = linspace(0,6*pi,200) ;
 x = t ;
 y = t.*sin(t) ;
 z = exp(t/10) - 1 ;
 %plot3(x,y,z)
 stem3(x,y,z,'filled')