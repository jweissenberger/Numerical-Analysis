function [a , b] = findinterval( f, x0 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

a = x0;
b = x0;
dx = 0.001;

while ((f(a)*f(b)) >= 0);
    a = a - dx;
    if ((f(a)*f(b)) < 0)
        return
    end
    
    b = b + dx;
    if ((f(a)*f(b)) < 0)
        return
    end
    
    dx = dx*2;
    
end


end

