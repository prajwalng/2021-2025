% CIRCLE - A scipt file to draw a unit circle
% create a vector theta
theta=linspace(0,2*pi,100);
% generate x-coordinates
x=cos(theta);
% generate y-coordinates
y=sin(theta);
% plot the circle
plot(x,y);
% set equal scale on axes
axis('equal');
% xlabel('x')
% ylabel('y')
% put a title
title('Circle of unit radius ')