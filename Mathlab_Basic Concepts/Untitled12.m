% the plot commands seemilogx, semilogy,and loglog
% plot the x- values, the y- values and both x- and y- value
% on a log10 scale, respectively. create a vector of
% x=0:10:1000. Plot x vs x^3 using the three log scale 
% plot commands hint comput y = x^3

x=0:10:1000;
y=x.^3;
semilogx(x,y)
semilogy(x,y)
loglog(x,y)