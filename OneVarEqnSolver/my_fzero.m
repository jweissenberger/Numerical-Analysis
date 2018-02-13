function [ p ] = my_fzero( f, df, x0 )
%my_fzero uses the findinterval and newbis function to find the zero of a
%function f given its derivative df and staring point x0
%   Inputs: f: a function
%          df: the derivative of the function f
%          x0: a staring point
%   Outputs: 
%           p: the zero of the function f

[a,b] = findinterval(f,x0);

p = newbis( f, df, a, b );



end

