%% Polar to Cartesian coordinates
    x = r.*cos(theta) ;
    y = r.*sin(theta) ;
    plot(x,y) , axis('equal')
    
 %% Polar to Cartesian with pol2cart
 [xx,yy] = pol2cart(theta,r) ;
 plot(xx,yy) , axis('equal')