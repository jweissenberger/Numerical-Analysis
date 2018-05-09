function [ x, y ] = midPolyI( f, a, b, tol )
%UNTITLED2 Summary of this function goes here
%   inputs: f: function that you want a set of points for
%           a: sarting point
%           b: end point
%         tol: tolerance that error of the midpoint must meet  

%step size
h = 0.1;

x(1,1) = a;
y(1,1) = f(a);

%iterator
i =1;

while x(1, i) < b,
    %if the next step doesn't meet the tolerance reject the step
    error = abs( f((x(1, i) + x(1, i)+h)/2 ) - (f(x(1,i)) +  (f(x(1,i))+h ))/2 );
    if error  > tol,
        %make the step size smaller
        h = h*.95;
    
    %if the next step size does meet the tolerance use it and make the
    %step size a litle bigger
    else
        x(1, i+1) = x(1, i)+h;
        y(1, i+1) = f(x(1, i+1));
        i = i+1;
        h = h*1.5;
    end
end

y(1,end) = f(b);
x(1,end) = b;

end

