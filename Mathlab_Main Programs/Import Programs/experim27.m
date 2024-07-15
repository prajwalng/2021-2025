% take 101 points between 0 and 1
z  = linspace(0,1,101) ;
% define the generating curve r(z)
r = sin(3*pi*z)+1.5 ;
% generate surface data for the cylinder
[X,Y,Z] = cylinder(r,50) ;

% plot the cylinder ; its handle is c
c = surf(X,Y,Z) ;
% set the axes to be square
axis square ;
% change the viewing angle slightly
view(-38.5,26) ;