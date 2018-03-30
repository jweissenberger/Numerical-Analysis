
n = 2;
fprintf('\nComposite Simpson Testing\n n \t Integral approximation \n');

while n < 10000
cs = comp_simp(ones(1, n));
fprintf('%i \t%1.10e \n', n, cs)

n = n*;
end
