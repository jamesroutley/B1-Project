%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5/1/14 James Routley
%function plot
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function gs_plot(G, n, x)
    hold on
    for i = 1:n
        plot(x, G(i,:))
    end
end