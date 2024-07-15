% plot of a parametric space curve :
% x(t) = t, y(t) = t^2, z(t) = t^3      0<=t<=1.

t = linspace(0,1,100)
x = t ;
y = t.^2 ;
z = t.^3 ;
plot3(x,y,z) , grid
xlabel('x(t) = t')
ylabel('y(t) = t^2')
zlabel('z(t) = t^3')