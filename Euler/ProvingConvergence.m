f = @(t, y) -10.*(y-cos(t))-sin(t);
actual = @(t) -exp(-10.*t)+cos(t);
a = 0;
b = pi;
ya = 0;

n = 100000;

[t, y] = explicit_euler(f,a,b,ya,n);

realAns = actual(t);
explicitError = max(abs(realAns- y))