function [ int ] = comp_simp( feval)
%Composite simpson
%   feval: vector of function evaluations
%   h: step size, difference between grid points

a = -1;
b = 1;


[~, m] = size(feval);
h = (b-a)/m;

%composite simpson if the interval is odd
if mod(m, 2) == 1,
r = repmat([2 4], 1, floor(m/2));
r(1,1) = 1;
r(1, m) = 1;
int = (h/3)*r*feval';


%composite simpson is even and then use the trapezoidal rule if not
else
    r = repmat([2 4], 1, floor((m-1)/2));
    r(1,1) = 1;
    r(1, m-1) = 1;
    last = ((feval(end)+feval(end-1))/2)*h;
    %last = (h/3)*(feval(end-3)+4*feval(end-2)+feval(end));
    %this commented out simpsons rule turns out to be less accurate than 
    %using the trap rule when I used it on the last three points
    int = (h/3)*r*feval(1,1:m-1)'+last;
end
%repmat([4 2], 1,3)
%needs to end in 4's 
%then slap ones onto the end
%size needs to match input of feval
% then do this guy times the transpose of the feval


%then just slap trapezoidal rule onto that guy for the last point
% if m is not odd 
% and use the same rule 
%}

end

