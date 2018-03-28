% Jack Weissenberger
% test_diff

df = @(x) (-50*x + exp(x))/(25*x^2+exp(x) + 1)^2;
f = @(x) 1/(1 + exp(x) + 25*x^2);

n = 10;
h = 2/n;
x = linspace(-1, 1, n);
y = 1./(1 + exp(x) + 25.*x.^2);

%forward difference
forward = diff(y)/h;
last = (f(1)-f(1-h))/h;
forward = [forward, last]

%central difference
central = gradient(y)/h;
central(end) = (1.5*f(1) - 2*f(1-h) + .5*f(1-2*h))/h;
central(1) = (1.5*f(1) + 2*f(1-h) - .5*f(1-2*h))/h








