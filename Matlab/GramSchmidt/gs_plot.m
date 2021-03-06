%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5/1/14 James Routley
%function plot
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function gs_plot(G, n, x)
    hold off ; set ( gca , 'FontSize' , 18);
    plot(x,G,'-', 'LineWidth' ,2)
    grid ON
    legend ('g0','g1','g2','g3','g4','g5', 'Location', 'NorthWest') 
    xlabel('x');
    ylabel(sprintf('y',n));
    title('Normalised Gram-Schmidt vectors');
    axis ([0 20 -100 400]);
end