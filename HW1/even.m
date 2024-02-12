function output = even(t, f)
    return_array = zeros(size(t));

    for i = 1:length(t)
        return_array(i) = f(t(i)) + f(-t(i));
    end

    output = return_array * 0.5;
end
