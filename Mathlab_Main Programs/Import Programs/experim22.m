% Make an anonymous function for root1.

my_anony_fun = matlabFunction(root1)

% Find the root when a = 7.

my_anony_fun(7)

% Check the root at a = 7.

subs(f,{x,a},{ans,7})

% Make an anonymous function for all roots.

my_anony_fun = matlabFunction(roots)

% Find the roots when a = 7.

my_anony_fun(7)

% Check out the 2nd root at a = 7.

subs(f,{x,a},{ans(2),7})