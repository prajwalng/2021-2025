% Example of use of EVAL function
% A Script file that lets you go out for lunch while MATLAB
% slogs.
% -----------

% t has 10001 elements

t = [0: .1: 1000] ;
% see the explanation below
for k = 1:10
    outputfile = ['result' , int2str(k)] ;
    % write commands to run your function here
    theta = k*pi*t ;
    % compute x
    x = sin(theta) ;
    % compute y
    y = cos(theta) ;
    % compute z
    z = x.*y.^2 ;
    % now save variables x, y, and z in a Mat-file
    eval(['save ' ,outputfile, ' x y z'])
end