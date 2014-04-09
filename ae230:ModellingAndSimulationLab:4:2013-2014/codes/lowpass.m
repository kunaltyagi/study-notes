%% AUTHOR @ 2014
% Kunal Tyagi
%% Usage
% Works well in MATLAB 2013a
%% TODO
% Sanity checks

%% CODE
function [X] = lowpass(Y, M)
    n = size(Y,1);
    X = zeros(n,1);
    for i=1:n
        if i<=M
            for j=1:i+M
                X(i) = X(i) + Y(j);
            end
            X(i) = X(i)/(j);
        else
            if i>n-M
                for j=i-M:n
                    X(i) = X(i) + Y(j);
                end
                X(i) = X(i)/(M+j-i);
            else
                for j=i-M:i+M
                    X(i) = X(i) + Y(j);
                end
                X(i) = X(i)/(2*M+1);
            end
        end
    end
end