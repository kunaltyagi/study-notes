%% AUTHOR @ 2014
% Kunal Tyagi
%% Usage
% Works well in MATLAB 2013a
%% TODO
% Sanity checks

%% CODE
function [X] = sanitizeOutlyers(Y, error_threshold)
    n = size(Y);
    X = zeros(n);
    X(1) = Y(1);
    for i=2:n
        if X(i-1)+error_threshold>X(i) || X(i-1)-error_threshold<X(i)
            X(i) = (Y(i-1)+Y(i))/2;
        end
    end
end