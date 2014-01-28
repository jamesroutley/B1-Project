%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function gs_increasingpowersofx
%James Routley 25/11/13
%
%generates a matrix V where... UNFINISHED
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function V = gs_increasingpowersofx(n, x)
    V = zeros(n, length(x));
    for i = 1:n
        for j = 1:length(x)
            V(i,j) = -1(j)^(i-1);
        end
    end
end