%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%gs_script
%James Routley 22/11/13
%
%A high level script which performs Gram-Schmidt orthoganalisation on a
%set of linearly independent functions V, to produce an orthonormal basis
%set G. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%range of x values
x = linspace(-2, 2, 5);

%n is the number of monomials we are looking at 
number_of_functions = 3;
n = number_of_functions - 1;

%generate a matrix V, columns of which are monomials over the range of x
V = zeros(id(n), length(x));
for i = id(0):id(n)
    for j = id(0):length(x)       
        V(i,j) = x(j)^(i-1);
    end
end
V

%test gs_innerproduct
%x'
%V(:, 1)
%V(:, 2)
%gs_innerproduct(x', V(:, 1), V(:, 2))

%Generate e values and g values. Stored in a vector E and a matrix G 

%Set up empty matrices E and G to store the values of e and g
E = zeros(id(n), id(n)-1);
G = zeros(id(n), length(x));

%Set g0 = v0
G(id(0), :) = V(id(0), :);


for k = 1 : n
    %set gk = vk
    G(id(k), :) = V(id(k), :);
    for l = 1 : k
        %calculate e and store it in E
        E(id(k), l) = gs_innerproduct(x, V(id(k), :), G(l, :)) / gs_innerproduct(x, G(l, :), G(l, :));
        %subtract the projection of previous functions from the function in
        %question 
        G(id(k), :) = G(id(k), :) -  E(id(k), l) * G(l, :);    
    end    
end
E
G