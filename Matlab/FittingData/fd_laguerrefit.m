%%%% fitting data to random points %%%%
% input:    vector with data values
%           vector of 'x' values defining the locations of those data
%           points
%           a scalar defining the order of the fit
%           a scalar defining alpha
%           sigma2,mu,nsamp,nbins
%%%%%%%%%%%%%%%%%%%% 

function [f, a_n] = fd_laguerrefit(n,a,fo,x)
% input vector data
psi = fd_generatepsi(x, n, a);       % generate psi vectors

% set up empty vector for alpha coefficients
a_n = zeros(1,n);


% generate alpha coefficients
for i = 1:n;
    func = psi(i,:).*fo;
    a_n(1,i) = trapz(x,func);
end


% add together terms in Laguerre fitting
 f = a_n(1,1).*psi(1,:);
 for i = 2:n;
     f = f + a_n(1,i)*psi(i,:);
   
 end
 


% plotting
%ystr = sprintf('Exponentially distributed data (mean = g)');
% figure
% set(gca,'FontSize',18);
% title('Laguerre fit to randomly generated data')
% plot(x,fo,'kx','LineWidth',1.2)
% xlabel('x');
% ylabel('y');
% grid on
% print('-depsc',sprintf('exp_data_g.eps'));
% hold on;
% plot(x,ffitted); hold on;
% 
% %a_0 came out as the first element in a_n
% %estimating the mean in command window: estimated_mean = trapz(x,x.*fo)
