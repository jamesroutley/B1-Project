%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function gs_increasingpowersofx
%James Routley 25/11/13
%
%generates a matrix V where... UNFINISHED
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function V = gs_increasingpowersofx(n, x)
    V = zeros(id(n), length(x));
    for i = id(0):id(n)
        for j = id(0):length(x)
            V(i,j) = x(j)^(i-1);
        end
    end
end