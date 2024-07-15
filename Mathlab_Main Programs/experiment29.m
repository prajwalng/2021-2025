%--------This is a script file 'solvex.m'----------
%It solves equation for x and also calculates det(A).
% create matrix A
r = input('Enter the value of r=');
A = [5 2*r r; 3 6 2*r-1; 2 r-1 3*r]; 
%create vector b
b = [2;3;5];
%find the determinant
det_A = det(A)
%find x
x = A\b