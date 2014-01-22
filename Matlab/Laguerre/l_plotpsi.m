function l_plotpsi(x, n, a)
    
   P = zeros(n, length(x));
    
    for i = 1:n
        
        P(i,:) = l_generatepsi(x, i, a);
    end
    
    hold off ; set ( gca , 'FontSize' , 18);
    plot(x,P,'-', 'LineWidth' ,2)
    grid ON
    legend ('L0','L1','L2','L3','L4','L5', 'Location', 'NorthEast') 
    xlabel('x-values');
    ylabel(sprintf('Laguerre polynomials up to %d terms',n));
    title('Laguerre polynomials');
    axis ([0 40 -2 2]);
end





function psi = l_generatepsi(x, n, a)

    L = l_generateL(x, n, a);
    psi = sqrt((gamma(n+1))/gamma(n+a+1)).*L(n,:).*x.^(a/2).*exp(-x/2);
    
    
end
