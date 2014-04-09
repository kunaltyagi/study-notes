function [min] = findMin(Y, a, b)
    min = Y(a);
    for i=a:b
        if min>Y(b)
            min = Y(b);
        end
    end
end