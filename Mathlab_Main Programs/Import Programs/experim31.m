% Example 2: The bead going around a circular path 
% leaves its trail

% Script file for animating thr circular motion of a bead.
% As the bead moves, it leaves a trail behind it.
% --------------------------------------

% clear any previous figure
clf
% create a vector theta
theta = linspace(0,2*pi,1000) ;
% generate x and y-coordinate
%- of the bead along the path
x = cos(theta) ;
y = sin(theta) ;
% draw the bead at the initial 
%- position and assign a handle
hbead = line(x(1),y(1),'marker','o','markersize',8,'erase','xor') ;
htrail = line(x(1),y(1),'marker','.','color','r','erase','none') ;
% cycle through all positions
axis([-1 1 -1 1]) ; 
axis('square') ;
for k = 2:length(theta)
    set(hbead,'xdata',x(k),'ydata',y(k)) ;
    set(htrail,'xdata',x(k),'ydata',y(k)) ;
    % draw the bead at the new position
    drawnow
end
