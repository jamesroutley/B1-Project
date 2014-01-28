



    
    x = linspace(0, 9, 10);
    
    
    hold off ; 
    set ( gca , 'FontSize' , 18);
    plot(x, E)
    hold on 
    xlabel('alpha');
    ylabel('Error');
    title('Error vs alpha values');
    legend('n=0', 'n=1', 'n=2', 'n=3', 'n=4', 'n=5', 'n=6', 'n=7', 'n=8', 'n=9', 'n=10', 'n=11', 'n=12');
    axis([0 9 0 0.5]);
    grid on; 
    
