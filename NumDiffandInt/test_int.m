%Jack Weissenberger
% test_int
% this script compares the integral approximations of composite simpson
% and cubic spline for n = 3, 5, 7 and 9 intervals

f = @(x) 1./(1 + exp(x) + 25.*x.^2);
n = 3;
%actual integral approximation
actual = integral(f, -1, 1);

fprintf('\n Integral Approximation Error \n n\t\t\t Composite Simpson \t\tCubic Spline\n');

while n < 10,
%composite simpson
x = linspace(-1, 1, n);
cs = comp_simp(f(x));
coms_error = abs(actual - cs);

%cubic spline integral interpolation
%x = linspace(-1, 1, 101);
y = 1./(1+exp(x)+25.*x.^2);
pp = spline(x,y);
cubic_S = quad(@(xx)ppval(pp,xx),x(1),x(end));
cubic_error = abs(actual - cubic_S);

fprintf(' %i \t\t\t% 1.2e\t \t \t   % 1.2e \n', n, coms_error, cubic_error);


n = n+2;
end