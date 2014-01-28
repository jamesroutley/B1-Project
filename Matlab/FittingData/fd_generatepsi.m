%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function l_plotsi.m
%James Routley 22/1/14
%
%A function which plots associated Laguerre polynomials, given x, n, a
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function P = fd_generatepsi(x, n, a)
    
       P = zeros(n, length(x));
    
    for i = 1:n
        P(i,:) = generatepsiN(x, i, a);
    end
end

function psi = generatepsiN(x, n, a)
    L = l_generateL(x, n, a);
    psi = sqrt((gamma((n-1)+1))/gamma((n-1)+a+1)).*L(n,:).*x.^(a/2).*exp(-x/2);
end

function [L] = l_generateL(x, n, a)
    
        %calculate the coefficients of the Laguerre polynomials and store them in a
        %matrix C
    C = l_recurrsivelaguerrecoefficients(n, a);

        %Script substitutes in numerical values for the x terms and stores
        %numerical values of the Laguerre polynomials in L

        %generate x terms: 1, x, x^2 ... x^n
    X = zeros(n, length(x));
    for i = 1:n
        X(i, :) = x.^(i-1);
    end    

        %flip C left-right 
    D = fliplr(C);
    L = D*X;


end

function C = l_recurrsivelaguerrecoefficients(n, a)

%set up matrix C
    C = zeros(n);
    
    if n == 1
        C(1, n) = 1;
    elseif n ==2
       C(1, n) = 1;
       C(2, n-1 : n) = [-1, a + 1];
    else
            C(1, n) = 1;
            C(2, n-1 : n) = [-1, a + 1];

        %cycle through rows and calculate and store coefficients
            for i = 3:n

        %caclculate the values of the coefficients of the recurring section of
        %equation
                reccoeff1 = [-1 , (2*(i-1) + a -1)];
                reccoeff2 = ((i-1) + a -1);

        %multiply the polynomials together using conv
                x = conv(reccoeff1, C(i-1, :));
                x(1) = [];          %corrects for syntax error caused by using conv
                y = conv(reccoeff2, C(i-2, :));

        %subtract one polynomial from the other and store in C
                C(i, :) = 1/(i-1)*(x - y);
            end
    end

end

