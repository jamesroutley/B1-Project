


sigma2 = 1/3;               % standard dev
mu = sqrt(1)+sqrt(-1);      % mean mu
nsamp = 1e4;                % number of samples
nbins = 100;                % intervals

[fo, x] = exp_data(sigma2,mu,nsamp,nbins);  %generate data

a = 0;
n = 6;

error0 = zeros(1, n); 
F0 = zeros(n, length(x));
for i = 1:n
    F0(i,:) = fd_laguerrefit(i,a,fo,x);
    func1 = (F0(i,:)-fo).^2;
    error0(1, i) = trapz(x,func1);
end
error0
% plot the difference
hold off ; 
set ( gca , 'FontSize' , 18);
plot(x, fo, 'kx')
hold on
plot(x,F0);
xlabel('x');
ylabel('y');
title('Laguerre fits up to the 5th order, alpha = 0');
legend('data', 'L0','L1','L2','L3','L4','L5', 'location', 'NorthEast');
%axis([0 20 -100 400]);
grid on;


a = 2;
n = 6;
error2 = zeros(1, n);
F2 = zeros(n, length(x));
for i = 1:n
    F2(i,:) = fd_laguerrefit(i,a,fo,x);
    func1 = (F2(i,:)-fo).^2;
    error2(1, i) = trapz(x,func1);
end

error2;
% plot the difference
hold off ; 
set ( gca , 'FontSize' , 18);
plot(x, fo, 'kx')
hold on
plot(x,F0);
xlabel('x');
ylabel('y');
title('Laguerre fits up to the 5th order, alpha = 2');
legend('data', 'L0','L1','L2','L3','L4','L5', 'location', 'NorthEast');
%axis([0 20 -100 400]);
grid on;


