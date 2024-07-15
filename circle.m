function [ x,y ] = circle(r);
% CIRCLEFN - Function to draw a circle of radius r.
% Call syntax: [x,y] = circlefn(r);   or
%           just: circlefn(r);
% Input r = specified radius
% output [x,y] = the x- and y-coordinates of data points
% linspace is linearly spaced

% create vector theta
theta=linspace(0,2*pi,100);
% generate x- and y-coordinates
r = 5;
x = r*cos(theta);
y = r*sin(theta);
% plot the circle
plot(x,y);
% set equal set on axes
axis('equal');
% put a title with the value of r
title(['Circle of radius r= ' ,num2str(r)])
end