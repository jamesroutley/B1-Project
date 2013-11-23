

%n is the number of monomials we are looking at 
number_of_functions = 3;
n = number_of_functions - 1;


E = zeros(id(n), id(n)-1);
E

for k = 1 : n
    for l = 1 : k
        E(id(k), l) = l+k;
        
        
    end    

end
E