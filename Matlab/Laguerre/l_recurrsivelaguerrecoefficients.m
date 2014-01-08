%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function l_recurrsivelaguerrecoefficients.m
%James Routley 7/1/14
%
%Function generates the Laguerre Coefficients when given the number of 
%functions n and the paramater a, recursively
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%calculates Laguerre coefficients,stores them in matrix C
function C = l_recurrsivelaguerrecoefficients(n, a)

%set up matrix C
    C = zeros(n);
    C(1, n) = 1;
    C(2, n-1 : n) = [-1, a + 1];

%cycle through rows and calculate and store coefficients
counter = 0;
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






