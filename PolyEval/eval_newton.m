function [ Yq ] = eval_newton(C, X, Xq)
%eval_newton

[~,n] = size(C);

f = @(x) C(1,1);
g = @(x) 1;


for i = 2:n, 
    g = @(x) g(x)*(x-X(1,i-1));
    f = @(x) f(x)+C(1,i)*g(x);
end

[~, m] = size(Xq);
Yq = zeros(1, m);
for i = 1:m,
    Yq(1, i) = f(Xq(1,i));
end


end

