%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5/1/14 James Routley
%function plot
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function gs_plot(G, n, x)
    hold off ; set ( gca , 'FontSize' , 18);
    plot(x,G,'-', 'LineWidth' ,2)
    legend ('g0','g1','g2','g3','g4','g5', 'Location', 'NorthWest') 
    xlabel('x-values');
    ylabel(sprintf('Normalised Gram-Schmidt vectors up to %d terms',n));
    title('Routley Normalised Gram-Schmidt vectors');
    axis ([0 10 -20 130]);
end