%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function l_generateG.m
%James Routley 22/11/13
%
% Generate G
%
%Function which performs Gram-Schmitt orthogonalisation to produce a matrix
%Gnormal of values. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [Gnormal] = l_generateG(x, n)
%range of x values
%x = linspace(0, 20,1001);

%n is the number of functions we will consider
%n = 6;


%Generate V, containing increasing powers of x:
V = gs_increasingpowersofx(n, x);

%Perform Gram Schmitt Orthogonalisation on V:
[E,G] = gs_gramschmittorthogonalisation(V, n, x);


%compute normalising constant
Gcoeff = gs_normalisingcoeff(G, n, x);

%normalise G
Gnormal = gs_normalise(G, Gcoeff, n, x);

gs_plot(Gnormal, n, x)


end


