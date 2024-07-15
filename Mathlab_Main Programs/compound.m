% calculate the interest on your money :
% the interest you get at the end of n years, at a flat
% annual rate of r%, depends on how the interest is
% compounded. If the interest is added to your account 
% k times a year, and the principal amount you invested is
% X(0), then at the end of n years you would have
%       X = X(0){1+(r/k)}.^(kn)
% amount of money in your account.
% write a function to compute the interest ( X -X(0) ) on
% your account for a given X, n, r,, and k.


function [capital,interest] = compound(capital,years,rate,timescomp);
% COMPOUND :
%               function to compute the compounded 
%  capital and the interest.
% call syntax :
%           [capital,interest] = compound(capital,years,rate,timescomp);
%   -----------------

%x0 = capital;
%years = n;
%rate = r;
%timescomp = k;
%x0 = input('enter the value of capital: ')
%years = input('enter the value of n: ')
%rate = input('enter the value of r: ')
%timescomp = input('enter the value of k: ')

x0 = capital = 4;
n = years = 5;
r = rate = 6;
k = timescomp = 365;
if r>1
    disp('check your interest rate. For 8% enter .08, not 8.')
end
capital = x0*(1+r/k)^(k*n);
interest = capital - x0;
    
