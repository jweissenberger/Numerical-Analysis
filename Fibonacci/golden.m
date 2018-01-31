

n = 3;
error = 10;
actual = (5^(1/2)+1)/2;

while error > 1e-15

guess = fib(n+1)/fib(n);
error = abs(guess- actual);

n = n+1;

end
error
n