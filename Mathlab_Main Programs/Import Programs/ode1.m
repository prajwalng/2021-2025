function xdot = ode1(t,x) ;
% ODE1: funnction to compute the derivative xdot
% at given t and x
% call syntax: xdot = ode1(t,x) ;
% ---------------------
global k_value c_value
k_value = 5;
c_value = 2;
%k=2;
t=linspace(0,2*pi,100) ;
xdot = k_value*x + c_value*sin(t) ;
