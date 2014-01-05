%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5/1/14 James Routley
%function gs_normalise
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function [Gnormal] =  gs_normalise(G, Gcoeff, n, x)
    Gnormal = zeros(n, length(x));
    for i = 1:n
        Gnormal(i,:) = G(i,:) / Gcoeff(i);
    end
end