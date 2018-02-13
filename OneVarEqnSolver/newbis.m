function [ p ] = newbis( f, df, a, b )
%newbis finds the zero of a function f
%   newbis finds the zero of a function using Newton's method and bisection
%   when Newton's fails
%
%   Inputs: f: a function 
%          df: the derivative of f
%       [a,b]: the interval to find the zero on
%   Outputs: 
%           p: the zero

p = a;
tol = 100*eps; %tolerance
i = 1; %iterator

fprintf('\n Findind Zero \n \t  x \t \t  f(x) \t \t Method\n');
%iterate until the value of the zero is smaller than the tolerance
while abs(f(p)) > tol;
    % Newton Step
    t = p - (f(p)/df(p));

    % if p is outside [a,b] use bisection
    if (t < a) || (t > b);
        p = (a+b)/2;
        fprintf('%d \t % 1.2e \t % 1.2e \t Bisection \n',i,p,f(p));
    else
        %case where we use the newton step
        fprintf('%d \t % 1.2e \t % 1.2e \t Newton \n',i,p,f(p));
        p = t;
    end

    if (f(p)*f(b) < 0);
        a = p;
    else
        b = p;
    end
    
    
    i = i +1;
end


end

