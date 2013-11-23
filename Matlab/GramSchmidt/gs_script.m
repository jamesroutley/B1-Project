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
x = linspace(-10, 10, 11);

%n is the number of monomials we are looking at 
n = 3;

%generate a matrix V, columns of which are monomials over the range of x
V = zeros(n, length(x));
for i = id(0):n
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
E = zeros(n, n-1);
G = zeros(n, length(x));




%for k = 1 : n
    
    

%end
