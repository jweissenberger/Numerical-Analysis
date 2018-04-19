%Jack Weissenberger
% test euler
%for this part of the assignment, i ran this code several different times
%with different values of n to get each plot and the error of each method

%setting up the function
f = @(t, y) -10.*(y-cos(t))-sin(t);
actual = @(t) -exp(-10.*t)+cos(t);
a = 0;
b = pi;
ya = 0;

%number of function evaluations for explicit and implicit
n = 1e4;

%calculate explicit and implicit
[t, y] = implicit_euler(f,a,b,ya,n);
[j, k] = explicit_euler(f,a,b,ya,n);

%plot explicit, implicit euler and the actual answer for this step size
hold on
plot(t, y)
plot(j, k)
fplot(actual, [0 pi])
legend('Implicit','Explicit','Actual')
hold off

%calculate the max global error of each function and compare it to ode23
realAns = actual(t);
implicitError = max(abs(realAns- y))
explicitError = max(abs(realAns- k))
options = odeset('RelTol', 2e-4, 'stats', 'on');
%accumilation of error is not that bad
[o,p] = ode23(f, [a b], ya, options);
ode23Error = max(abs(actual(o)- p))
