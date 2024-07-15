function factn = factorial(n);
% FACTORIAL : function to compute factorial n!
% call syntax:
%           factn = factorial(n);
% ----------------

% initialise. also 0! =1
factn = 1;
% go from n to 1
n = input('Enter the value of n= ');
for k = n:-1:1
    factn = factn*k;    % multiply n by n-1, n-2, etc.
end
