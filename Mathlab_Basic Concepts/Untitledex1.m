%% Publishing Reports - A Simple Example
%% A Spiral Plot
% Let us plot a spiral given by
%%
% $$r(\theta) = e^{-\frac{\theta}{10}}, 
%       \quad 0\le\theta\le\ 10\pi$$

%% Polar to Cartesian coordinates
% using the usual formulas
%%
% $$ x = r\cos\theta, \quad y = r \sin\theta.$$
%
    r = input('enter the value of r=') ;
    theta = linspace(0,20*pi,50) ;
    x = r.*cos(theta) ;
    y = r.*sin(theta) ;
    plot(x,y) , axis('equal')