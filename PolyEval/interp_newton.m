function [ F ] = interp_newton( X, Y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[~,n] = size(X);
F = zeros(n-1,n);

%find the first differences
for i = 1 : n-1,
    
    F(i,1) = (Y(i+1)-Y(i))/(X(i+1)-X(i));
end

%find the rest of the differences
F(1,2) = (F(2,1)-F(1,1))/(X(3)-X(1));
F(2,2) = (F(3,1)-F(2,1))/(X(4)-X(2));

for i = 1: n-2
    F(i,2) = (F(i+1,1)-F(i,1))/(X(i+2)-X(i));
end


end

