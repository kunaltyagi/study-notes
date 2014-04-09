function [max] = findMax(Y, a, b)
    max = Y(a);
    for i=a:b
        if max<Y(b)
            max = Y(b);
        end
    end
end