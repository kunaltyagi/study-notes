%% AUTHOR @ 2014
% Kunal Tyagi
%% Usage
% Works well in MATLAB 2013a
%% TODO
% Sanity checks

%% CODE
function [gain, time_constant] = firstOrder(X, Y, init_offset, final_offset, step_size, sample_size) % X is input
    time_constant = 0;
    n = size(Y,1);
    A = lowpass(X, sample_size);
    B = lowpass(Y, sample_size);
    subplot(2,1,1); plot(1:n, X, 1:n, A);
    subplot(2,1,2); plot(1:n, Y, 1:n, B);
    x = detectStep(A, init_offset, final_offset, step_size);
    gain = findGain(A, B, init_offset, final_offset, sample_size);
    min_y = findMin(B, init_offset, n-final_offset);
    max_y = findMax(B, init_offset, n-final_offset);
    delta_y = (max_y - min_y)*0.63212;
    t_value = B(x) + delta_y;
    for i=x:n-final_offset
        if B(i)>t_value
            time_constant = i-x;
            break;
        end
    end
    if time_constant == 0
        time_constant = n-x;
    end
    %% HARDCODING for time step
    % 1 t = 1/10s
    time_constant = time_constant/10;
end
