%%%% plot estimated errors of fs_triangle %%%%

format long;

T = 1;
nint = 1000;
nterms = 5;
a = 1;

ERROR = zeros(1,nterms+1); 

for i = 0:nterms;
    est_err = fs_triangleerror(T,nint,i,a);
    ERROR(1,i+1) = est_err;
end

d = 0:nterms;
plot(d,ERROR);
set(gca, 'FontSize', 18);
xlabel('Number of terms');
ylabel(sprintf('Least square error of each term for a = %g',a));
  
print('-depsc', sprintf('leastsquareerror%dtermsa%g.eps',nterms,a));