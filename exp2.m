%% Publishing Reports - A Simple Example
%% A Spiral Plot
% Let us plot a spiral given by
% r(t) = exp(-theta/10), 0<=theta<=10*pi
%% Create vectors theta and r

theta = linspace(0,10*pi,200);
% 200 linearly spaced points between
%- 0 and 10*pi
% compute r
r = exp(-theta/10);

%% Now plot theta vs r using polar plot

polar(theta,r)
%plot(theta,r)