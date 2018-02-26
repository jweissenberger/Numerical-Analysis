%Jack Weissenberger February 2018
%integral_approx
% This script approximates the definite integral of the function f using
% polynomial interpolation and cubis splines interpolation 
f = @(x) 1./(1+exp(x)+25.*x.^2);
n = 3;
i = 1;

while n < 10,
    X = linspace(-1,1,n);
    Y = f(X);
    
    %polynomial interpolation
    P = polyfit(X,Y,2);
    q = polyint(P);
    polyI(1, i)= diff(polyval(q,[-1 1]));

    %cubic spline interpolation
    pp = spline(X, Y,X);
    qq = polyint(pp);
    cubicSI(1, i) = diff(polyval(qq,[-1 1]));
    
    i = i +1;
    n = n+2;
end

polyI
cubicSI