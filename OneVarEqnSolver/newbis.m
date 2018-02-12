function [ p ] = newbis( f, df, a, b )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

p = a;
tol = 100*eps;
i = 1;

fprintf('\n Findind Zero \n \t  x \t \t  f(x) \t \t  Method\n');
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

