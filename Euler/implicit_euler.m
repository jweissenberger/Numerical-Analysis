function [ t, y ] = implicit_euler( f, a, b, ya, n )
% do we iterate backwards?


h = (b-a)/n;
t = zeros(1, n);
t(1) = a;
y = zeros(1, n);
y(1) = ya;

for i = 1:n,
   t(i+1) = a + h*i;
   %we use forward euler to make our first guess in fzero
   %it creates another function call but gives us a much better guess
   y(i+1) = fzero(@(z) y(i) + h * f(t(i+1), z) -z , y(i)+h*f(t(i), y(i)));
end


end