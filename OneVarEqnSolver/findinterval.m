function [a , b] = findinterval( f, x0 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

a = x0;
b = x0;
dx = 0.001;
i = 1;

fprintf('Finding Interval \n \t  a \t \t  b \t \t  f(a) \t \t  f(b) \n');

while ((f(a)*f(b)) >= 0);
    a = a - dx;
    if ((f(a)*f(b)) < 0)
        fprintf('%d \t % 1.2e \t % 1.2e \t % 1.2e \t % 1.2e \n',i,a,b,f(a),f(b));
        return
    end
    
    b = b + dx;
    if ((f(a)*f(b)) < 0)
        fprintf('%d \t % 1.2e \t % 1.2e \t % 1.2e \t % 1.2e \n',i,a,b,f(a),f(b));
        return
    end
    
    dx = dx*2;
    
    fprintf('%d \t % 1.2e \t % 1.2e \t % 1.2e \t % 1.2e \n',i,a,b,f(a),f(b));
    i = i + 1;
    
end

f(a)
f(b)


end

