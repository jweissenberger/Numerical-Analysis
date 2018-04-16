f = @(t, y) -10.*(y-cos(t))-sin(t);
actual = @(t) -exp(-10.*t)+cos(t);
a = 0;
b = pi;
ya = 0;

for i = 1:4,
    n(i) = 10^(i);

    %[t, y] = implicit_euler(f,a,b,ya,n(i));
    [j, k] = explicit_euler(f,a,b,ya,n(i));


    realAns = actual(j);
    %implicitError(i) = max(abs(realAns- y));
    explicitError(i) = max(abs(realAns - k));
    %[o,p] = ode23(f, [a b], ya);
    %ode23Error = max(abs(actual(o)- p))
    %need to find # of function evaluations 
    %size(o)

end



loglog(explicitError, n)
%set(gca, 'YScale', 'log')