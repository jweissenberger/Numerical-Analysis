function [ t, y ] = implicit_euler( f, a, b, ya, n )
% do we iterate backwards?


h = (b-a)/n;
t = zeros(1, n);
t(1) = a;
y = zeros(1, n);
y(1) = ya;

for i = 1:n,
    t(i+1)=a+i*h;
    ynew=y(i)+h*(f(t(i),y(i)));
    y(i+1)=y(i)+h*f(t(i+1),ynew);
end


end