%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%function fs_innerproduct
%James Routley 22/11/13
%Function generates the inner product of two functions
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function [result] = gs_innerproduct(x, y1, y2)
    result = trapz(x, y1.*y2.*exp(-x));
    
end

