%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5/1/14 James Routley
%function gs_verifynormality
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [normal] = gs_verifynormality(Gnormal, n)
    I = eye(n+1);
   
    P = norm(I-Y);
    P(P<0.00001) = 0;

    if P == 0
        normal = 'Yes';

    else
        normal = 'No';

    end

 