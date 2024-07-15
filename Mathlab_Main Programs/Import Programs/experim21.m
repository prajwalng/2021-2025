syms x a

% A cubic with parameter a.

f = x^3 + a* x^2 + 3*x + 5

% find the three roots (a mess!).

roots = solve(f,x)

% Pick out the first root (a mess!).

root1 = roots(1)

% make an inline function.

myfun = inline(char(root1))

% find the root when a = 7.

myfun(7)

% check the root at a = 7.

subs(f,{x,a},{ans,7})