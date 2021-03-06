%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function l_generateL.m
%James Routley 22/11/13
%
% Generate G
%
%Function which performs Gram-Schmitt orthogonalisation to produce a matrix
%Gnormal of values. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
