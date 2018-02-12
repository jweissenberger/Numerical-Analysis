function [ p ] = newbis( f, df, a, b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

p = a;
tol = 100*eps;

while abs(f(p)) > tol;
    % Newton Step
    t = p - (f(p)/df(p));

    % if p is outside [a,b] use bisection
    if (t < a) || (t > b);
        p = (a+b)/2;
    else
        %case where we use the newton step
        p = t;
    end

    if (f(p)*f(b) < 0);
        a = p;
    else
        b = p;
    end

end


end

