function [gain] = findGain(X, Y, init_offset, final_offset, sample_size)
    n_x = size(Y,1);
    min_x = findMin(X, init_offset, init_offset+sample_size);
    max_x = findMax(X, (n_x-final_offset-sample_size), (n_x-final_offset));
    
    n_y = size(Y,1);
    min_y = findMin(Y, init_offset, init_offset+sample_size);
    max_y = findMax(Y, n_y-final_offset-sample_size, n_y-final_offset);
    
    delta_x = max_x - min_x;
    delta_y = max_y - min_y;
    
    gain = delta_y/delta_x;
end