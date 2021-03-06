function [ C ] = interp_newton( X, Y )
%Jack Weissenberger February 2018
%interp_newton uses Newton's Divided differences formula to calculate the
%coefficients of the interpolating polynominal
%**NOTE** X and Y must be row vectors vectors 
%   
%   Inputs:  X: row vector of the x points you want to interpolate
%            Y: row vector of the y points you want to interpolate
%   Outputs: C: row vector of the coefficients of the newton basis

[~,n] = size(X);
F = zeros(n-1,n-1);

%find the first differences
for i = 1 : n-1,
    F(i,1) = (Y(i+1)-Y(i))/(X(i+1)-X(i));
end

%find the rest of the differences
k = 2;
for j = 2: n-1,
    for i = 1: n-k,
        F(i,j) = (F(i+1,j-1)-F(i,j-1))/(X(i+k)-X(i));
    end
    k = k +1;
end

%take the top row of the F matrix and the first value of Y
C(1,1) = Y(1,1);
C(1,2:n) = F(1,:);


end

