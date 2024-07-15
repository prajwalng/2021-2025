% Example 3: A bar pendulum swings in 2-D

% --------script file to animate a bar pendulum----------

% clear figure and stuff
clf
% coordinates of endpoints of the bar
data = [0 0; -1.5 0] ;
% initial orientation
phi = 0 ;
% rotation matrix
R = [cos(phi) -sin(phi) ; sin(phi) cos(phi)] ; 
data = R*data ;
% set axis limits
axis([-2 2 -2 2])
axis('equal')

% --------define the objects called bar,hinge,and path.
bar = line('xdata',data(1,:),'ydata',data(2,:),.......
    'linewidth', 3 ,'erase','xor') ;
hinge = line('xdata',0,'ydata',0,'marker','o','markersize',[10]) ;
path = line('xdata',[],'ydata',[],'marker','.','erasemode','none') ;

% initial angle
theta = pi-pi/1000 ; 
% initial angular speed
thetadot = 0 ;
% initial time
t = 0 ;
% time step
dt = .2 ;
% final time
tfinal = 50 ;

% -------Euler's methos for numerical integration

while(t<tfinal) ; 
    t = t + dt ;
    theta = theta + thetadot*dt ;
    thetadot = thetadot - sin(theta)*dt ; 
    R = [cos(theta) -sin(theta) ; sin(theta) cos(theta)] ; 
    datanew = R*data ;
    
    % ---- chnage the property values of the object : path and bar.
    set(path,'xdata',datanew(1,1),'ydata',datanew(2,1)) ;
    set(bar,'xdata',datanew(1,:),'ydata',datanew(2,:)) ;
    drawnow ; 
end
