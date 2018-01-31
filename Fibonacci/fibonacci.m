n = 11;

sum = 0;
first = 0; 
second = 1;
for i = 1 : n
    if (i == 1)
        sum = i;
    
    else
        sum = first + second;
        first = second; 
        second = sum;
    end
    
end


sum
