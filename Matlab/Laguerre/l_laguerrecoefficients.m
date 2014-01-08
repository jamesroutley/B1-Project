%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function l_laguerrecoefficients
%James Routley 7/1/14
%
%Function generates the Laguerre Coefficients when given the order of
%differentiation n and the paramater a
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function c = l_laguerrecoefficients(n, a)
    
    c = 1/factorial(n) .* binomials(n) .* fcoeff(n, a) .* gcoeff(n);
    
end

function B = binomials(n)

    B = zeros(1, n);
    for i = 0 : n 
        B(i + 1) = nchoosek(n, i);
    end
    
end

function F = fcoeff(n, a)
    
    F = zeros (1, n);
    for i = 0:n;
        F(1, i+1) = factorial(n + a)/factorial((n - i) + a);
    end
end

function G = gcoeff(n)
    G = zeros (1, n); 
    for i = 0:n;
        G(1, i+1) = (-1)^(n-i);
    end
end    
    
    



