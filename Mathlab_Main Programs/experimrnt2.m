% plot of four filled polygons with three vertices each.

X =[0 0 0 0; 1 1 -1 1; 1 -1 -1 -1] ;
Y =[0 0 0 0; 4 4 4 4; 4 4 4 4] ;
Z =[0 0 0 0; 1 1 -1 -1; -1 1 1 -1] ;
fillcolor = rand(3,4) ;
fill3(X,Y,Z,fillcolor)
view(120,30)