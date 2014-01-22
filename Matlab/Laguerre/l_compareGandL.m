%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function l_compareGandL.m
%James Routley 20/1/14
%
%Script generates and compares Laguerre Polynomials and the results of Gram
%Schmitt Orthogonalisation 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = linspace(-5, 20, 101);
n = 6;
a = 0;

%Generate G values
G = l_generateG(x, n);

%generate L values
L = l_generateL(x, n, a);

%plot (x, (G-L))

D = L-G;

    %plot
% plot the difference
hold off ; 
set ( gca , 'FontSize' , 18);
plot(x,G);
xlabel('x');
ylabel('Languerre minus Gram Schmidt');
title('Changed Laguerre and Gram Schmidt to fit each other');
legend('L0-G0','L1-G1','L2-G2','L3-G3','L4-G4','L5-G5');
axis([-5 20 -10 20]);
grid on;