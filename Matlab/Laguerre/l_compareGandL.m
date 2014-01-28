%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function l_compareGandL.m
%James Routley 20/1/14
%
%Script generates and compares Laguerre Polynomials and the results of Gram
%Schmitt Orthogonalisation 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = linspace(0, 20, 101);
n = 6;
a = 0;

%Generate G values
G = l_generateG(x, n);

%generate L values
L = l_generateL(x, n, a);

%plot (x, (G-L))


D = G-L;

    %plot
% plot the difference
hold off ; 
set ( gca , 'FontSize' , 18);
plot(x,D);
xlabel('x');
ylabel('y');
title('Gram-Schmitt - Laguerre');
legend('L0-G0','L1-G1','L2-G2','L3-G3','L4-G4','L5-G5', 'location', 'NorthWest');
axis([0 20 -100 400]);
grid on;