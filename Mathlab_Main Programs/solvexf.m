function [det_A, x] = solvexf(r)
% SOLVEXF solves a 3*3 matrix equation with parameter r.
% THis is the function file 'solvexf.m'
% To call this function, type:
% [det_A,x] = solvexf(r);
% r is the input and det_A and x are output.
%--------------------------------------
% create matrix A
r = input('Enter the value of r=');
A = [5 2*r r; 3 6 2*r-1; 2 r-1 3*r] ; 
%create vector b
b = [2;3;5];
%find the determinant
det_A = det(A)

%find x
x = A\b