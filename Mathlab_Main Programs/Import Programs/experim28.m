% Spruce up the cylinder

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
% create a light source
light('position',[2 -2 .1],'Style','infinite') ;
% define how the light is reflected
lighting phong ;
% set the face alpha (opacity) to 80percentage
set(c,'facealpha',0.8) ;
% define a dark-brown color with RGB values
dark_brown = [.32 .19 .19] ;
% change the edge color to dark brown
set(c,'edgecolor',dark_brown) ;
% make the edge almost transparent
set(c,'edgealpha',0.1) ;
% remove the axes and the frame
set(gca,'visible','off') ;