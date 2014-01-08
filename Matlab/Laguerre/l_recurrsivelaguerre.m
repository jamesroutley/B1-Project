%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%script l_recurrsivelaguerre.m
%James Routley 7/1/14
%
%Script plots Laguerre polynomials 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        %n is the number of functions we will consider
n = 6;
a = 0;

        %calculate the coefficients of the Laguerre polynomials and store them in a
        %matrix C
C = l_recurrsivelaguerrecoefficients(n, a);



        %Script substitutes in numerical values for the x terms and stores
        %numerical values of the Laguerre polynomials in L

        %range of x axis values
xrange = linspace(0, 10, 11);

X = zeros(n, length(xrange));
for i = 1:n
    
    X(i, :) = xrange.^(i-1);
    
end    
C
X


L = C*X;


hold off ; set ( gca , 'FontSize' , 18);
plot(xrange,L,'-', 'LineWidth' ,2)
legend ('g0','g1','g2','g3','g4','g5', 'Location', 'NorthWest') 
xlabel('x-values');
ylabel(sprintf('Normalised Gram-Schmidt vectors up to %d terms',n));
title('Normalised Gram-Schmidt vectors');
axis ([0 10 -20 130]);


%plot(xrange, L)

%plot(L, xrange)






