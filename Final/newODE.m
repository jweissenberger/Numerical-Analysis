function [ t, y ] = newODE( f, df,  a, b, ya, n )
%newODE 
%   uses newton's method and a new update rule to solve an IVP

h = (b-a)/n;
t = linspace(a, b, n);
y = zeros(size(t));
y(1) = ya;
tol = 1e-8;

for i = 2:length(y)   
    %non-linear function to solve update rule
    g = @(z) z - y(i-1) - (h/2)*(f(t(i-1), z) + f(t(i), z) );
    
    %derivative with respect to z
    dg = @(z) 1 - (h/2)*(df(t(i-1), z) + df(t(i), z) );
    
    %explicit euler for first guess
    exp = y(i-1) + h * f(t(i-1));
    
    %use newton's method to solve
    y(i) = newton(g,dg,exp,tol);
end
    

end

