%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%gs_script
%James Routley 22/11/13
%
%A high level script which performs Gram-Schmidt orthoganalisation on a
%set of linearly independent functions V, to produce an orthonormal basis
%set G. Matrix E contians the coefficients. UNFINISHED
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%range of x values
x = linspace(-50, 50, 11);

%n is the number of monomials we are looking at 
number_of_functions = 3;
n = number_of_functions - 1;

%generate a matrix V, columns of which are monomials over the range of x
V = gs_increasingpowersofx(n, x);
V


%Perform Gram Schmitt Orthogonalisation on V
[E,G] = gs_gramschmittorthogonalisation(V, n, x);

E
G
