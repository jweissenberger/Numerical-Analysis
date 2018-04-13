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
implicitError = max(abs(actual(t)- y))
explicitError = max(abs(actual(j)- k))
