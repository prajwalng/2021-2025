% compute the cross product : rite a functinal file crossprod
%  to compute the cross product of two vectors u and v.
% check your function by taking cross products of pairs of
% unit vectors : (i , j) , (j , k) , etc.....
function w = crossprod(u,v);
% CROSSPROD : 
%           function to compute w = u * v for vectors u&v
% call syntax :
%               w = crossprod(u,v);
% ------------------
% check if u OR v has > 3 elements
%u = ( u(1),u(2),u(3) );
%v = ( v(1),v(2),v(3) );
%u(1)=2;
%u(2)=1;
%u(3)=0;
%v(1)=5;
%v(2)=6;
%v(3)=4;
%w = u*v
u = input('enter the matrix of u: ');
v = input('enter the matrix of v: ');
if length(u)>3 | length(v)>3
    error('Ask Euler. This cross product is beyond me.')
end
% first element of w
% second element of w
% third element of w
w = [u(2)*v(3)-u(3)*v(2);
       u(3)*v(1)-u(1)*v(3);
       u(1)*v(2)-u(2)*v(1)];