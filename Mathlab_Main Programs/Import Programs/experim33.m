% Example 4: A bar pendulum swings, amd other data are displayed

% ---script file to animate a bar pendulum and the data---

% get basic data for animation
% ask the user for initial position
disp('Please specify the initial angle from the')
disp('vertical upright position.')
disp(' ')
offset = input('Enter the initial angle now: ') ;

% ask the user for the time of simulation
tfinal = input('Please enter the duration of simulation: ') ;
disp('I am working or studying..........')
% initial angle
theta = pi-offset ; 
% initial angular speed
thetadot = 0 ;
% initial time
t = 0 ;
% time step
dt = .2 ;
% final time
tf = tfinal ;

disp('Watch the graphics screen')
% clear figure and stuff
clf
h1 = axes('position', [0.55 .1 .4 .3]) ; 
% set the axis limits
axis([0 tf -4 4]) ;
xlabel('time'),ylabel('displacement')
Displ = line('xdata',[],'ydata',[],'marker','.','erasemode','none') ;

h2 = axes('position', [0.55 .55 .4 .3]) ; 
% set the axis limits
axis([0 tf -4 4]) ;
xlabel('time'),ylabel('velocity')
Vel = line('xdata',[],'ydata',[],'marker','.','erasemode','none') ;

h3 = axes('position', [.1 .1 .4 .4]) ; 
% set the axis limits
axis([-pi pi -4 4]) ;
axis('square')
xlabel('displacement'),ylabel('velocity')
Phase = line('xdata',[],'ydata',[],'marker','.','erasemode','none') ;

h4 = axes('position', [.1 .55 .4 .4]) ; 
% set the axis limits
axis([-2 2 -2 2]) ;
axis('square')

% coordinates of endpoints of the bar
data = [0 0; -1.8 0] ;
% initial orientation
phi = 0 ;
% rotation matrix
R = [cos(phi) -sin(phi) ; sin(phi) cos(phi)] ; 
data = R*data ;

% --------define the objects called bar,hinge,and path.
bar = line('xdata',data(1,:),'ydata',data(2,:),.......
    'linewidth', 3 ,'erase','xor') ;
hinge = line('xdata',0,'ydata',0,'marker','o','markersize',[10]) ;
path = line('xdata',[],'ydata',[],'marker','.','erasemode','none') ;

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
    set(Phase,'xdata',theta,'ydata',thetadot) ;
    set(Displ,'xdata',t,'ydata',theta) ;
    set(Vel,'xdata',t,'ydata',thetadot) ;
    drawnow ; 
end
