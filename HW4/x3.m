function output = x3(t)
    time_array = t;

    for i = 1:length(time_array)
        temp = (mod(time_array(i) - 0.5, 1) - 0.5);

        if abs(temp) < 0.25
            time_array(i) = abs(temp);
        else 
            time_array(i)= 0;
        end
    end

    output = time_array;
end
