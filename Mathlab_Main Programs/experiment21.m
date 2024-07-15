% Anonymous functions
% creates a function f(x) = x2 -sinx, evaluates f(x) at x = 5,
 
fx = @(x) x^2 - sin(x);
fx(5)

% creates a function f(x,y) = x2+y2, evaluates f(x,y) at
% x = 2 and y = 3,

fxy = @(x,y) x^2 + y^2;
fxy(2,3)

% vectorizes the function f(x) , and plots f(x) over 0 to pi/2.

fx = @(x) x.^2 - sin(x)
x = [0:.1:pi/2];
plot(x,fx(x))
 