
function t = fs_periodictrianglenew(T, x, b)
    t = fs_periodictriangle(T, x);
        if t < 0
            t = 0
        end
end
