% sum of geometric series : write a function to compute
% the sum of a geometric series
% 1 + r + r^2 + r^3 + - - - - - - + r^n for a given r and n.
% Ths the inpiut to the function must be r and n and the
% output must be the sum of the series.
function s =gseriessum(r,n);
% GSERIESSUM :
%        function to calculate the sum of a geometric series
% the series is 1 + r + r^2 + r^3 + - - - - - - + r^n 
%                               ( up to nth power)
% call syntax :
%                  s = gseriessum(r,n);
%   --------------------

%   create a vector from 0 to n
r = input('enter the range of r: ')
n = input('enter the value of n: ')
%r = 0 : 12;
%n = 12;
nvector = 0 : n;

%  create a vector of terms in the series

 series = r.^nvector;
 
 % sum of all elements of the vector 'series'.
 
 s = sum(series);