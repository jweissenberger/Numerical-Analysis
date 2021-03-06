% Jack Weissenberger
% test_diff

df = @(x)(-50.*x + exp(x))./(25.*x.^2+exp(x) + 1).^2;
f = @(x) 1/(1 + exp(x) + 25*x^2);

fprintf('\n Maximum Absolute Error \n n\t\t\t Forward Difference \tCentral Difference\n');
n = 10;

while n <= 1e6,
    h = 2/n;
    x = linspace(-1, 1, n);
    y = 1./(1 + exp(x) + 25.*x.^2);

    %forward difference
    forward = diff(y)/h;
    last = (y(end)-y(end-1))/h;
    nforward = [forward, last];

    %central difference
    central = gradient(y)/h;
    central(end) = [(3)*y(end) - 4*y(end - 1) + y(end - 2)]/(2*h);
    central(1) = [(-3)*y(1) + 4*y(2) - y(3)]/(2*h);
      

    %actual
    actual = df(x);
  
    
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
        plot(x, actual)
        hold off
    end
    
    n = n*10;
end
