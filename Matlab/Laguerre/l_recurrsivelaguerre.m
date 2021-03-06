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
xmin = -5;
xmax = 20;
xrange = linspace(xmin, xmax, 1001);

    %generate x terms: 1, x, x^2 ... x^n
X = zeros(n, length(xrange));
for i = 1:n
    X(i, :) = xrange.^(i-1);
end    

    %flip C left-right 
D = fliplr(C);
L = D*X;

    %plot
hold off ; set ( gca , 'FontSize' , 18);
plot(xrange,L,'-', 'LineWidth' ,2)
grid ON
legend ('L0','L1','L2','L3','L4','L5', 'Location', 'NorthEast') 
xlabel('x-values');
ylabel(sprintf('Laguerre polynomials up to %d terms',n));
title('Laguerre polynomials');
axis ([xmin xmax -10 20]);








