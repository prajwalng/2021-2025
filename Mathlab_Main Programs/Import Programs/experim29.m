% Right half of the cylinder
% clear the figure window
%clf
% copy thr data for manipulation
%Z1 = Z;
% set part of the data to NaN
%Z1(:,15:40) = NaN ;
% plot Z1 to see half of the cylinder
%c3 = surf(X,Y,Z1) ; axis square ;
%light('position' , [2 -2 .1],'Style','infinite') ;
%set(c3,'facecolor',[.99 .92 .80],'facealpha',1) ;
%set(c3,'edgecolor',[.32 .19 .19],'edgealpha',0.1) ;
%lighting phong ;
%set(gca,'visible','off')
%view(-38.5,26)



% Left half of the cylinder
% clear the figure window
%clf ;
% copy thr data for manipulation
%ZL = Z;
% set part of the data to NaN
%ZL(:,1:14) = NaN ;
%ZL(:,41:51) = NaN ;
% plot ZL to see half of the cylinder
%c2 = surf(X,Y,ZL) ; axis square ;
%l1 = light('position' , [2 -2 .1],'Style','infinite') ;
%l2 = light('position' , [-2 2 .1],'Style','infinite') ;
%set(c2,'facecolor',[.87 .49 0],'facealpha',1) ;
%set(c2,'edgecolor',[.87 .49 0],'edgealpha',0.1) ;
%lighting phong ;
%set(gca,'visible','off')
%view(-38.5,26)



% Bottom half of the cylinder ( or a 'golden onion')

Z1 = Z ;
Z1(51:101,:) = NaN ;
c2 = surf(X,Y,Z1) ; axis square

% copy code for light, facecolor,etc., here from left half cylinder

lighting flat ;
view(-40,20) ;