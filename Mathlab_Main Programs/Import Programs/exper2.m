% EXPFIT: Exponential curve fit example
% For the  following data for (t,p) fit an exponential curve
% p = p0*exp(-t/tau).
% The problem is solved by taking log and then using a linear
% fit (1st order polynomial

% original data

t = [0 0.5 1 5 10 20] ;
p = [760 625 528 85 14 0.16] ;

% prepare new data for linear fit
tbar = t ;
% no change in t is required
pbar = log(p) ;

% Fit a 1st order polynomial through (tbar,pbar)
a = polyfit(tbar,pbar,1) ;
% the outpput is a = [a1 a0]

% Evaluate constants p0 and tau
p0 = exp(a(2)) ;
% since a(2) = a0 = log(p0) 
tau = -1/a(1) ;
% since a1 = -1/tau

% (a) plot the new curve and the data on linear scale
tnew = linspace(0,20,20) ;
% create more refined t
pnew = p0*exp(-tnew/tau) ;
% evaluate p at new t
plot(t,p,'o',tnew,pnew) , grid
xlabel('Time (sec)') , ylabel('Pressure (torr)')


% (b) plot the new curve and the data on semilog scale

%lpnew = exp(polyval(a,tnew)) ;
%semilogy(t,p,'o',tnew,lpnew) , grid
%xlabel('Time (sec)') , ylabel('Pressure (torr)')
