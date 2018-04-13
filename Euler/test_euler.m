%Jack Weissenberger
% test euler

f = @(t, y) -10.*(y-cos(t))-sin(t);
actual = @(t) -exp(-10.*t)+cos(t);
a = 0;
b = pi;
ya = 0;

n = 1e3;

[t, y] = implicit_euler(f,a,b,ya,n);
[j, k] = explicit_euler(f,a,b,ya,n);

hold on
plot(t, y)
plot(j, k)
fplot(actual, [0 pi])
legend('Implicit','Explicit','Actual')
hold off

n
realAns = actual(t);
implicitError = max(abs(realAns- y))
explicitError = max(abs(realAns- k))
[o,p] = ode23(f, [a b], ya);
ode23Error = max(abs(actual(o)- p))
%need to find # of function evaluations 
%size(o)
