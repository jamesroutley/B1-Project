%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%gs_script
%James Routley 22/11/13
%
%A high level script which performs Gram-Schmidt orthoganalisation on a
%set of linearly independent functions V, to produce an orthonormal basis
%set G. Matrix E contians the coefficients... UNFINISHED
%For the sake of this testing, our linearly independant functions shall be
%increasing powers of x: vi(x) = x^i for i = 0:n
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%range of x values
x = linspace(-50, 50, 11);

%n is the number of monomials we are looking at 
number_of_functions = 3;
n = number_of_functions - 1;

%Generate V, containing increasing powers of x:
V = gs_increasingpowersofx(n, x);


%Perform Gram Schmitt Orthogonalisation on V:
[E,G] = gs_gramschmittorthogonalisation(V, n, x);

