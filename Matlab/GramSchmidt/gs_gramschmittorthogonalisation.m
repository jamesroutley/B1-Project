

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function gs_gramschmittorthogonalisation
%James Routley 25/11/13
%
%performs gs orthog on... UNFINISHED
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function [E, G] = gs_gramschmittorthogonalisation(V, n, x)

    E = zeros(id(n), id(n)-1);
    G = zeros(id(n), length(x));
    %Set g0 = v0
    %THIS LINE MAY BE UNNECESSARY
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

end
