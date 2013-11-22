



%range of x values
x = linspace(-10, 10, 11);
%n is the number of monomials we are looking at 
n = 2;

%generate a matrix V, columns of which are monomials over the range of x
V = zeros(length(x), n);

for i = 1:n+1
    for j = 1:length(x)       
        V(j,i) = x(j)^(i-1);
    end
end

V

