function [ acc ] = isAccurate( f, x, y, tol )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[~, m] = size(x);
acc = zeros(1, m);

for i = 1: m-1,
    error = abs( f((x(1, i) + x(1, i+1))/2 ) - (y(1,i) +  y(1,i+1))/2 );
    acc(1, i) = error;
    if error > tol;
        disp('Error greater than tolerance')
        disp(i)
        disp(acc(1,i))
    end
end

disp('Accuracy fits tolerance');
end

