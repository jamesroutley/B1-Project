% FIT_MEASURED_DATA generates a
% Laguerre fit to a set of measured
% channel data.  The fit mathematically
% describes the probability density
% of the attenuation (squared) of a 
% measured wireless channel.
% 
% n = maxorder. a= alpha
% 
% returns the estimated error of the fit.
%
% cy 22/12/13
function [est_error_laguerre,t] = fit_measured_data(n,a)
close all 
% Load the measured data. Two vectors will appear in the workspace:
%     xi  = is a vector of data point locations;   
%     fo  = is a vector of data points.
load('measured_data.mat')


% Plot the data.
ystr = sprintf('Density data points');
figure
set(gca,'FontSize',18);
plot(xi,fo,'kx','LineWidth',1.2); hold on;
xlabel('x');
ylabel(ystr);
title('Histogram points for measured data');
grid on; hold on;
% 
%%% fit data %%%
tic;
% est_mean_xi = trapz(xi,xi.*fo);
% sigma = 2;


mu = trapz(xi,xi.*fo);
var = trapz(xi,(xi-mu).^2.*fo);          
sigma2 = sqrt(var);
sigma = sigma2/2;


xscaled = (xi-xi(1))/sigma;   
f = fitting1(n,a,fo,xscaled);


%plotting fit:
hold on;
plot (xi,f,'Linewidth',2); 


% estimating error
err = (f-fo).^2;
est_error_laguerre = trapz(xi,err);
t = toc;
text(6,0.35,sprintf('Estimated Error = %g',est_error_laguerre));
end