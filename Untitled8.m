% to display the data points with small circles,
% use plot(x,y,'o') and combine the 2 plots with the
% command plot(x,y,x,y,'o')

plot(x,sin(x),x,sin(x),'o')
xlabel('x'),ylabel('sin(x)')