%  FUNWITHSPIRALS: Script to plot 4 filled spirals in
% different axes
% Written by Rudra Pratap on July 7, 1997,
%           last modified Nov 7, 2004.
% ------------------------

% create basic data for a spiral

t = linspace(0,8*pi,200) ;
r = exp(-.1*t) ;
x = r.*cos(t) ;
y = r.*sin(t) ;

% clear previous figure settinggs
clf
% first axes
h1 = axes('position' , [.1,.1,.5,.5]) ;
% first (big) spiral in green
fill(x,y,'g')
% second axes
h2 = axes('position' , [.45,.45,.3,.3]) ;
% second spiral in blue
fill(x,y,'b')
% change the x-axis color to blue
set(h2,'xcolor','b') ;
% change the y-axis color to blue
set(h2,'ycolor','b') ;
% remove axis tick marks
set(h2,'xticklabel',' ') ;
set(h2,'yticklabel',' ') ;
% third axes
h3 = axes('position' , [.67,.67,.2,.2]) ;
% third spiral, no outer box
fill(x,y,'m') , box('off')
% change axis color to magenta
set(h3,'xcolor','m') ;
set(h3,'ycolor','m') ;
% remove axis tick marks
set(h3,'xticklabel',' ') ;
set(h3,'yticklabel',' ') ;
% fourth axes
h4 = axes('position',[.84,.84,.1,.1]) ;
% fourth spiral in red
fill(x,y,'r')
% change the background color
set(h4,'color','y') ;
% locate x-axis on top
set(h4,'xaxisloc','top') ;
% locate y-axis on right
set(h4,'yaxisloc','right') ;