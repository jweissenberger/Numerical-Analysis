function p = newton(f,df,x0,tol)
% uses Newton's method to approximate zero of f
%   using derivative df and starting point x0
    
    % initialize approximations
    p = x0;
    
    % print header and initial values
    i = 0;
    fprintf('it           p                    fp \n');
    fprintf('%2d   % .15f   % .15f\n',i,p,f(p));
    
    % loop until approximation changes less than tolerance

    while abs(f(p)) > tol,
        p   = p - f(p) / df(p); 
        % print values
        i = i+1;
        fprintf('%2d   % .15f   % .15f\n',i,p,f(p));
    end

end