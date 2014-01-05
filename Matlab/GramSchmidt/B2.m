
result = 0;

for x = linspace(1, 2, 10)
    a = (1 - (1 - x^-20))/(1 - (1 - x));
    a
    if 18 < a %&& a < 19
        result = x
    end
end