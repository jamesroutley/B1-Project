%%%% fitting data script for task 5_3 %%%%
% fitting script for parameterised against laguerre fit
%input:    vector with data values
%           vector of 'x' values defining the locations of those data
%           points
%           a scalar defining the order of the fit
%          a scalar defining alpha
%           sigma2,mu,nsamp,nbinsm
%%%%%%%%%%%%%%%%%%%% 

sigma2 = 2;                 % standard dev
mu = 0;                     % mean mu
nsamp = 1e4;                % hmm
nbins = 100;                % intervals?
n = 1;                      % order of laguerre
a = 0;                      % alpha for laguerre


[fo, x] = exp_data(sigma2,mu,nsamp,nbins);      % create the random data and corresponding x

[f] = fd_laguerrefit((n+1),a,fo,x);

% plotting
%ystr = sprintf('Fittings with n = %d, alpha = %g (mean = %g sigma2 = %g)',n,a,mu,sigma2);
%set(gca,'FontSize',12);
%plot(x,fo,'kx','LineWidth',1.2)
%xlabel('x');
%ylabel('y');
%title('Laguerre fit against parameterised fit');
%grid on
%print('-depsc',sprintf('exp_data_%g.eps',sigma2));
%hold on;
%plot(x,f,'Linewidth',2); hold on;

%a_0 came out as the first element in a_n
%estimating the mean in command window: estimated_mean = trapz(x,x.*fo)


%parameterised fit
estimated_mean = trapz(x,x.*fo);
p_fit = 1/estimated_mean.*exp(-x/estimated_mean);

%estimated error
func1 = (f-fo).^2;
func2 = (p_fit-fo).^2;
laguerreerror = trapz(x,func1)             % a lot better
parameterisederror = trapz(x,func2)
%a_n

% plotting

plot(x,fo, 'kx','LineWidth',1.2);hold on
plot(x,f, 'Linewidth',2); hold on;
plot(x,p_fit,'g','Linewidth',2); hold on;
title('Comparison of Laguerre and Parameterised Fits')
text(10,0.27,sprintf('Laguerre Error = %g',laguerreerror));
text(10,0.22,sprintf('Parameterised Error= %g',parameterisederror));
legend('data','Parameterised fit','Laguerre fit');
%print('-depsc',sprintf('Lagandparfit.eps'));

