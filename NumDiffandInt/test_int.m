%Jack Weissenberger
% test_int

f = @(x) 1./(1 + exp(x) + 25.*x.^2);

%actual integral approximation
actual = integral(f, -1, 1)

%composite simpson
a = linspace(-1, 1, 101);
comp_simp(f(a))

%cubic spline integral interpolation
x = linspace(-1, 1, 101);
y = 1./(1+exp(x)+25.*x.^2);
pp = spline(x,y);
int_y = quad(@(xx)ppval(pp,xx),x(1),x(end))
