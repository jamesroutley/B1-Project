%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fs_triangleerror.m 
% James Routley 21/1/14
%
%
% a function which calculates the least square error of the nth fourier
% representation of a periodic triangle. 
%
% T = period
% nint = number of integral slices (uses trapezium rule)
% nterms = number of terms in the Fourier approximation 
% a = gradient of triangle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  function  estimated_error = fs_triangleerror(T,nint,nterms,a)
  w = 2*pi/T;                   % Derive omega
                                % Integral from -T/2 to +T/2
  x = (-T/2:T/nint:T/2);        % Make vector of x values
  f = fs_periodictrianglenew(T,x,a);    % Make vector of f(x) values, modified 
                                % function with an extra input a
 format long;
  % Compute coefficients 
  A0 = fs_Acoeff(T,0,f,x);      % A0 done separately
  for m=1:1:nterms
    A(m) = fs_Acoeff(T,m,f,x);  % The rest in a loop
    B(m) = fs_Bcoeff(T,m,f,x);  %
  end
  
  
  % For fun, build the series approximation to nterms
  fseries = (A0/2)*ones(size(x));
  for m=1:1:nterms
    fseries = fseries + A(m)*cos(m*w*x) + B(m)*sin(m*w*x);
  end

  
  
  % error:
  err = (f-fseries).^2;
  estimated_error = trapz(x,err);
  


