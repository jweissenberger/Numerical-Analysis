% Jack Weissenberger
% test_diff

df = @(x)(-50*x + exp(x))/(25*x^2+exp(x) + 1)^2;
f = @(x) 1/(1 + exp(x) + 25*x^2);

fprintf('\n Maximum Absolute Error \n n\t\t\t Forward Difference \tCentral Difference\n');
n = 10;

while n <= 1e6,
    h = 2/n;
    x = linspace(-1, 1, n);
    y = 1./(1 + exp(x) + 25.*x.^2);

    %forward difference
    forward = diff(y)/h;
    last = (f(1)-f(1-h))/h;
    nforward = [forward, last];

    %central difference
    central = gradient(y)/h;
    central(end) = (1.5*f(1) - 2*f(1-h) + .5*f(1-2*h))/h;
    central(1) = (1.5*f(1) + 2*f(1-h) - .5*f(1-2*h))/h;

    %actual
    actual = zeros(1, n);
    for i = 1:n,
        actual(i) = df(x(i));
    end
    
    %error calculation
    forwardE = abs(actual- nforward);
    centralE = abs(actual- central);

    %maximum error
    maxForwardE = max(forwardE);
    maxCentralE = max(centralE);

    fprintf(' %1.0e \t\t% 1.2e\t \t \t   % 1.2e \n', n, maxForwardE, maxCentralE);

    if n == 1e6,
        hold on
        plot(x, forwardE, '*')
        plot(x, centralE, 'o')
        plot(x, actual, '.')
    end
    
    n = n*10;
end
