%Jack Weissenberger February 2018
%Cubic Splines

f = @(x) 1./(1+exp(x)+25.*x.^2);
fplot(f,'b:');
xlim([0 1])
ylim([0 0.55])
hold on
n = 3;
plotStyle = {'o-','g-','r-', 'b-'};
i = 1;
while n <10
    X = linspace(-1,1,n);
    Y = f(X);
    YY = spline(X, Y, X);
    plot(X, YY, plotStyle{i});
    n = n+2;
    i  = i +1;
end
hold off