function [ p ] = my_fzero( f, df, x0 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

[a,b] = findinterval(f,x0);

p = newbis( f, df, a, b );



end

