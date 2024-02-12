function out = relu(t)
    if t < 0
        %fprintf("t: %.2f \n", t);
        out = 0;
    else
        %fprintf("t: %.2f \n", t);
        out = t;
    end
end

