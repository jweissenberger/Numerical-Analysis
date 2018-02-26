%Jack Weissenberger February 2018
%integral_approx
f = @(x) 1./(1+exp(x)+25.*x.^2);
n = 3;
X = linspace(-1,1,n);
Y = f(X);
P = polyfit(X,Y,2);
q = polyint(P);
I = diff(polyval(q,[-1 1]))

pp = spline(X, Y,X);
qq = polyint(pp);
II = diff(polyval(qq,[-1 1]))
