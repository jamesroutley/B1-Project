%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 29/11/13 James Routley
% Function which verifies othogonality
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [orthog] = gs_verifyorthogonality(G, n, x)

    Z = zeros(n);

    for i = 1:n
        for j = 1:n
            Z(i,j) = gs_innerproduct(x, G(i,:),G(j,:));
        end
    end
    
    for i = 1:n
        for j = 1:n
            if Z(i,j) < 0.001
                orthog = 0;
            else 
                orthog = 1; 
        end
    end
end
