function [ t, y ] = explicit_euler( f, a, b, ya, n )
% explicit_euler
% this function calculates a vector of ODE approximations using the
% forwards Euler methon
%   Inputs: f: the ODE you are looking to solve
%           a: beginning of the interval
%           b: end of the interval
%          ya: first function evaluation on the interval
%           n: number of function evaluations
%  Outputs: t: the values where the function is evaluated
%           y: the ODE evaluations at the given points t


h = (b-a)/n;
t = zeros(1, n);
t(1) = a;
y = zeros(1, n);
y(1) = ya;

for i = 1:n,
    y(i+1) = y(i)+h*f(t(i),y(i));
    t(i+1) = a + i*h;
end


end

