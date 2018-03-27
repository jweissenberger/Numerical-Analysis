function [ p ] = bisection( f, a, b, tol )
%computes p, a zero of f in [a,b]
%   requires that f(a) and f(b) are opposite signs

fp = f(a);
fb = f(b);


i = 0;
fp = 1000;

fprintf('it \t a \t \t \t p \t \t \t b \t \t \t fp\n ');

while abs(fp) > tol && i < 53

    p = (a + b)/2;
    fp = f(p);
    
    % zero is between p and b
    if fp * fb < 0
        a = p;
        %fa = fp;
    else % zero is between a and p
        b = p;
        fb = fp;
    end
    
    i = i +1;
    
    fprintf('%d \t %1.2e \t %1.2e \t %1.2e \t % .2e\n', i, a,p,b,fp);
     
    
end

end

