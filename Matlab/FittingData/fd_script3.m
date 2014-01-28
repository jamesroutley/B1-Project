

%task 1
sigma2 = 6; 
mu = 0;
nsamp = 1e4; 
nbins = 100;
[ fo , x ] = exp_data ( sigma2 , mu , nsamp , nbins );


xscaled = 2*x/sigma2;


%task 2
a = 0;
n = 6;
error1 = zeros(1, n);
F1 = zeros(n, length(x));
for i = 1:n
    F1(i,:) = fd_laguerrefit(i,a,fo,x);
    func1 = (F1(i,:)-fo).^2;
    error1(1, i) = trapz(x,func1);
end



%task 3
a = 0;
n = 6;
error2 = zeros(1, n);
F2 = zeros(n, length(x));
for i = 1:n
    F2(i,:) = fd_laguerrefit(i,a,fo,xscaled);
    func1 = (F2(i,:)-fo).^2;
    error2(1, i) = trapz(xscaled,func1);
end

%task 6
%task 3
a = 0;
n = 6;
error2 = zeros(1, n);
F2 = zeros(n, length(x));
for i = 1:n
    F2(i,:) = fd_laguerrefit(i,a,fo,xscaled);
    func1 = (F2(i,:)-fo).^2;
    error2(1, i) = trapz(xscaled,func1);
end


emu = trapz(x,x.*fo);
p_fit = 1/emu.*exp(-x/emu);

func2 = (p_fit-fo).^2;
error3 = trapz(x,func2)





%plot p_fit
hold off ; 
set ( gca , 'FontSize' , 18);
plot(x, fo, 'kx')
hold on
plot(x,p_fit);
hold on 
plot(x, F0)
xlabel('x');
ylabel('y');
title('Parametrised Laguerre fit');
legend('data', 'Parametrised Laguerre', 'location', 'NorthEast');
%axis([0 40 0 0.205]);
grid on;







