function [ F ] = interp_newton( X, Y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[~,n] = size(X);
F = zeros(n-1,n-1);
%F = zeros(10,10);

%find the first differences
for i = 1 : n-1,
    
    F(i,1) = (Y(i+1)-Y(i))/(X(i+1)-X(i));
end

%find the rest of the differences
F(1,2) = (F(2,1)-F(1,1))/(X(3)-X(1));
F(2,2) = (F(3,1)-F(2,1))/(X(4)-X(2));

%F(i,2) = (F(i+1,1)-F(i,1))/(X(i+2)-X(i)); 

k = 2;
for j = 2: n-1,
    for i = 1: n-k,
        %F(i,2) = (F(i+1,1)-F(i,1))/(X(i+2)-X(i));
        F(i,j) = (F(i+1,j-1)-F(i,j-1))/(X(i+k)-X(i));
    end
    k = k +1;
end

%{
for i = 1:n-3
    F(i,3) = (F(i+1,2)-F(i,2))/(X(i+3)-X(i));
end
%}

end

