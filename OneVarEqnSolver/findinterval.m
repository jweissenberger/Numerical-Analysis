function [a , b] = findinterval( f, x0 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

a = x0;
b = x0;
dx = 0.001;
i = 1;

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
    
    fprintf('%d \t %1.2e \t %1.2e \t %1.2e', i, a,b,f(a),f(b));
    i = i + 1;
    
end


end

