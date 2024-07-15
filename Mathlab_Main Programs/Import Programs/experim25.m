% Example 1 : Placing insets

% the following script file shows hoe to create multiple 
% axes, size them, and place them so that they look like insets.

% INSETGRAPHICS: Example script for creating insets in plots
% -------------------------------------------------------------
%       Example of graphics placement with Handle Graphics
% ---------------------------------------------------------------

% clear the figure window
clf
% t(1) is set to a small number
t = linspace(0,2*pi) ; 
t(1) = eps ; 
y = sin(t) ;
% --------------

% place axes with width  .8 and
    %- height .8 at coordinates (.1,.1)
h1 = axes('position' , [0.1 0.1 .8 .8]) ;

% Turn the enclosing box off
plot(t,y) , xlabel('t') , ylabel('sin t')
% get the handle of 'xlabel' of the
set(h1, 'Box' , 'Off') ; 
%- current axes and assign to xh1
xh1 = get(gca,'xlabel') ;

set(xh1, 'fontsize' ,16,'fontweight','bold')
% change the attributes of 'xlabel'
% do the same with 'ylabel'
yh1 = get(gca,'ylabel') ;

set(yh1, 'fontsize' ,16,'fontweight','bold')

% place another axes on the same plot
% draw a filled polygon with red fill
h2 = axes('position' , [0.6 0.6 .2 .2]) ;
fill(t,y.^2,'r')
set(h2, 'Box' , 'Off') ;
xlabel('t') , ylabel('(sin t)^2')
set(get(h2,'xlabel'),'FontName','Times')
set(get(h2,'ylabel'),'FontName','Times')

% place yet another axes
h3 = axes('position' , [0.15 0.2 .3 .3]) ;
% make a polar plot
polar(t,y./t) ; 
% get the handle of all children
%- of the current axes
polarch = get(gca, 'children') ;
% set the line width of the first child
%- which is the line we plotted
set(polarch(1), 'linewidth' , 3)

%----------------------
