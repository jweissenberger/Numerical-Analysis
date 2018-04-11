function [ t, y ] = explicit_euler( f, a, b, ya, n )

h = (b-a)/n;
t = zeros(1, n);
t(1) = a;
y = zeros(1, n);
y(1) = ya;

for i = 1:n,
    y(i+1) = y(i)+h*f(t(i),y(i));
    t(i+1) = a + i*h;
end


end

