% plotyy
% y1 = e^-x sinx, 0<=t<=10 y2 = e^x

x = 1:.1:10 ;
y1 = exp(-x).*sin(x) ;
y2 = exp(x) ;
Ax = plotyy(x,y1,x,y2) ; 
hy1 = get(Ax(1) , 'ylabel') ;
hy2 = get(Ax(2) , 'ylabel') ;
set(hy1 , 'string' , ' e^-x sin(x)') ;
set(hy2 , 'string' , ' e^x') ;