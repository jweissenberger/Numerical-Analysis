function [ p ] = newbis( f, df, a, b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

p = a;
tol = 100*eps;

while abs(f(p)) > tol;
    % Newton Step
    p = p - (f(p)/df(p));

    % if p is outside [a,b] use bisection
    if (p < a) || (p > b);
        p = (a+b)/2;
    end

    if (f(p)*f(b) < 0);
        a = p;
    else
        b = p;
    end

end


end

