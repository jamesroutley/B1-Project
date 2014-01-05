%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%29/11/13 James Routley
%function gs_normalise
%
%Takes a matrix, G, the rows of which are a series of functions and
%normalises the functions. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [C] = gs_normalise(G, n, x)

    C = zeros(n, 1);

    for i = 1:n
        C(1, i) = sqrt(gs_innerproduct(x, G(i,:), G(i,:)));
    end

end