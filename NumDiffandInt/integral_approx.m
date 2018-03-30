%Jack Weissenberger February 2018
%integral_approx
% This script approximates the definite integral of the function f using
% cubis splines interpolation 
%y = 1./(1+exp(x)+25.*x.^2);
n = 100;
i = 1;


%x = 0:10;
x = linspace(-1, 1, 12);
y = 1./(1+exp(x)+25.*x.^2);
pp = spline(x,y);
int_y = quad(@(xx)ppval(pp,xx),x(1),x(end))

%{
x = 0:10
%x = linspace(-1, 1, 10);
%y = 5 + 3*x.^2;
pp = spline(x,y);
int_y = quad(@(xx)ppval(pp,xx),x(1),x(end))
%}

