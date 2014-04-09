function [X] = detectStep(Y, init_offset, final_offset, step)
    X = 0;    
    n = size(Y,1);
    mod_step = step/3;
    % b = 0;
    for i=init_offset:(n-final_offset)
        % if b<abs(Y(i)-Y(i+1))
        %     b = abs(Y(i+1) - Y(i));
        % end
        if Y(i)+mod_step<Y(i+1)
            X = i;
            % break;
        end
    end
end

