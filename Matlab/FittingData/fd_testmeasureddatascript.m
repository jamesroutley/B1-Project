
n = 6;
a = 10;

%matrix of error
E = zeros(n, a);


for i = 1:n
    for j = 1:a
        
        E(i, j) = fd_fit_measured_data(i, j);
        
    end
end
