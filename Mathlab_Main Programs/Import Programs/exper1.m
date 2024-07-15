% global variables

% scriptfile to solve a first - order ode
% ---------------------
global k_value c_value
k_value = 5;
c_value = 2;
%x = 3;
%t = 2*pi;
%xdot = k_value*x + c_value*sin(t) ;
ts = [0 20] ; % to specify time span=[t_0 t_final]
x0 = 1.0 ; %specify the initial condition
%xdot = ode1(t,x) 
[t, x] = ode23 ('ode1', ts, x0) ; %execute ode23 to solve ODE.
plot(t,x)
