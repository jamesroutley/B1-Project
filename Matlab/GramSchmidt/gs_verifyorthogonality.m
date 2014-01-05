%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 29/11/13 James Routley
% Function which verifies othogonality
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [Z] = gs_verifyorthogonality(G, n, x)

    Z = zeros(n);

    for i = 1:n
        for j = 1:n
            Z(i,j) = gs_innerproduct(x, G(i,:),G(j,:));
        end
    end
end
