%% AUTHOR @ 2014
% Kunal Tyagi
%% Usage
% Works well in MATLAB 2013a
%% TODO
% Sanity checks

%% CODE
function [min] = findMin(Y, a, b)
    min = Y(a);
    for i=a:b
        if min>Y(b)
            min = Y(b);
        end
    end
end