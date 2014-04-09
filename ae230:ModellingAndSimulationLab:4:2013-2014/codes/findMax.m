%% AUTHOR @ 2014
% Kunal Tyagi
%% Usage
% Works well in MATLAB 2013a
%% TODO
% Sanity checks

%% CODE
function [max] = findMax(Y, a, b)
    max = Y(a);
    for i=a:b
        if max<Y(b)
            max = Y(b);
        end
    end
end