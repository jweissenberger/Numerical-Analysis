function [ p ] = comp_simp( feval, h)
%UNTITLED3 Summary of this function goes here
%   feval: vector of function evaluations
%   h: step size, difference between grid points

m = size(feval);
%repmat([4 2], 1,3)
%needs to end in 4's 
%then slap ones onto the end
%size needs to match input of feval
% then do this guy times the transpose of the feval


%then just slap trapezoidal rule onto that guy for the last point
% if m is not odd 
% and use the same rule 


end

