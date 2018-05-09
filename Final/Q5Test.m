
f = @(y, t) y.^2 .* (1-y);
df = @(y, t) y.*(2-3.*y);
a = 0;
b = 20;
ya = 0.1;
n = 500;
[t, y]=newODE(f, df, a, b, ya, n);
options = odeset('RelTol', 1e-14);
[o,p]=ode23(f, [a b], ya, options);
hold on
plot(t, y)
plot(o, p)
legend('newODE', 'ode23')
hold off