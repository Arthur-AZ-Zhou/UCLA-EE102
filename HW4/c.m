function out = c(k)
    if k == 0
        out = 1/16;
    elseif mod(k, 4) == 0
        out = 0;
    elseif mod(k, 4) == 1
        out = -1/(2*pi^2*k^2) + 1/(4*pi*k);
    elseif mod(k, 4) == 2
        out = -1/(pi^2*k^2);
    else
        out = -1/(2*pi^2*k^2) - 1/(4*pi*k);
    end
end