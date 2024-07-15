% f = matlabFunction(expression, 'file' , 'file_name' )

syms x a

% A is a 2 by 2 matrix

A = [x a; a*x x^2]

% Compute eigen pairs of A.

[V,D] = eig(A) ;

% eigenvalues are on the diagonal of D.

lambda = diag(D) ;

%  lambda is coded in A_eigenvalues.m.

h_eval = matlabFunction(lambda, 'file' , 'A_eigenvalues')

% try online help on this function.

help A_eigenvalues

% find eigenvalues for x = 1,  a = 2.

A_eigenvalues(1,2)

%  V is coded in A_eigenvectors.m.

h_evec = matlabFunction(V, 'file' , 'A_eigenvectors')

% find eigenvectors for x = 1,  a = 2.

v = A_eigenvectors(1,2)

