function [ Yq ] = eval_newton(C, X, Xq)
%Jack Weissenberger February 2018
%eval_newton evaluates an interpolated function in the newton basis 
%***NOTE*** all vectors must be row vectors
%   Inputs:   C: a vector of coefficients in the Newton basis, should be
%                calculated using the interp_newton function
%             X: vector of x values at which the newton basis was 
%                calculated
%            Xq: vector of values at which you want to evaluate the
%                interpolated polynomial
%   Outputs: Yq: a vector of the function values evaluated at the values of
%                X

[~,n] = size(C);

f = @(x) C(1,1);
g = @(x) 1;

%f keeps track of the entire function while g keeps track of the
%(x-xn) terms
for i = 2:n, 
    g = @(x) g(x)*(x-X(1,i-1));
    f = @(x) f(x)+C(1,i)*g(x);
end

%evaluates the points of Xq and stores them in Yq
[~, m] = size(Xq);
Yq = zeros(1, m);
for i = 1:m,
    Yq(1, i) = f(Xq(1,i));
end


end

