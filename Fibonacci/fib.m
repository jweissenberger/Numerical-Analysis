function [ sum ] = fib( n )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

a = ((1+ 5^(1/2))/2)^n;
b = ((1- 5^(1/2))/2)^n;

sum = (1/ 5^(1/2)) * (a-b);

end

