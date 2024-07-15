% polar

% r2 = 2sin5t, 0<=t<=2*pi

t = linspace(0,2*pi,200) ;
r =sqrt(abs(2*sin(5*t))) ;
polar(t,r)