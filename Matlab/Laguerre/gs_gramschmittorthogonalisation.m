

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function gs_gramschmittorthogonalisation
%James Routley 25/11/13
%
%performs gram schmitt orthogonalisation on a series of linearly
%independant function stores as rows of the vector V
%
%   V = A matrix, the rows of which are a  a series of linearly
%   independant functions
%
%   n = The number of functions we are looking at. Equal to the number of
%   rows of V
%
%   x = A vector of x values
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function [E, G] = gs_gramschmittorthogonalisation(V, n, x)

    E = zeros(n);
    G = zeros(n, length(x));
    %Set g0 = v0
    G(1, :) = V(1, :);


    for k = 1 : n-1
        %set gk = vk
        G(k+1, :) = V(k+1, :);
        for l = 1 : k
            %calculate e and store it in E
            E(k+1, l) = gs_innerproduct(x, V(k+1, :), G(l, :)) / gs_innerproduct(x, G(l, :), G(l, :));
            %subtract the projection of previous functions from the function in
            %question 
            G(k+1, :) = G(k+1, :) -  E(k+1, l) .* G(l, :);
        end
    end

end
