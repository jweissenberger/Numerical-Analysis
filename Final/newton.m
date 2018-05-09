function p = newton(f,df,x0,tol)
% uses Newton's method to approximate zero of f
%   using derivative df and starting point x0
    
    % initialize approximations
    p = x0;
    i = 0;
    
    % loop until approximation changes less than tolerance
    while abs(f(p)) > tol,
        p   = p - f(p) / df(p); 
        i = i+1;
    end

end