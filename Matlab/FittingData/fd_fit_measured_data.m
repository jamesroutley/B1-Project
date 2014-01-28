%fd_fit_measured_data.m


% FIT_MEASURED_DATA generates a
% Laguerre fit to a set of measured
% channel data . The fit mathematically
% describes the probability density
% of the attenuation ( squared ) of a
% measured wireless channel .
%
% jpc 23/10/13
function [ error ] = fd_fit_measured_data ( n , a)
% Load the measured data. Two vectors will appear in the workspace :
        % xi is a vector of data point locations ;
        % fo is a vector of data points .
load ('measured_data.mat')

% Plot the data. This will help you to visualisation what the fit should look like .
ystr = sprintf ( ' Density data points ');
%figure
set ( gca , 'FontSize' ,18);
%plot ( xi , fo , 'kx' ,'LineWidth' ,1.2)
xlabel ( 'x');
ylabel ( ystr );
title ( 'Histogram points for measured data and the Laguerre fit n=5, a=2');
grid on
%%% Your code here %%%


mu = trapz(xi,xi.*fo);
var = trapz(xi,(xi-mu).^2.*fo);          
sigma2 = sqrt(var);
sigma = sigma2/2;

xscaled = (xi-xi(1))/sigma;
l = fd_laguerrefit(n,a,fo,xscaled);
func1 = (l-fo).^2;
error = trapz(xscaled,func1);


%plot l
hold on
%plot (xi,l,'Linewidth',2); 





end





