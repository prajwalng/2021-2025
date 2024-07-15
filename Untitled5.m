% CIRCLE - A script file to draw a circle of radius 'r'
r=input('Enter the radius of the circle: ')
% create a vector theta
theta=linspace(0,2*pi,100);
% generate x-coordinates
x=r*cos(theta);
% generate y-coordinates
y=r*sin(theta);
% plot the circle
plot(x,y);
% set equal scale on axes
axis('equal');
% xlabel('x')
% ylabel('y')
% put a title
title('Circle of given radius r')