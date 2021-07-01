function [bitstream,quantizedOutput] = quantize_func(L,minMagnitude,maxMagnitude,sample) 
    n = log2(L); % The number of bits in each quantized step
    quantizationVals = linspace(minMagnitude,maxMagnitude,L);
    % From minumum Magnitude to maximum Magnitude divide them by L and
    % assign it to vector quantizationVals
    quantizedOutput = zeros(1,length(sample));
    % assign quantizedOutput vector zeros as sample values length
    quantizedOutput_index = 0; % In order to find the sample equaivalant 
    % values in the quantzization Vals
    bitstream = []; % Empty vector
    for sample_val = sample % In each sample_val
        quantization_index = 0; % The Quantization Output index
        temp_quan_index = 0; % temporary quantization index
        min_diff_val = L; % minumum difference value first assign it to L which
        % is the half of the maximum difference value
        for quantization_step = quantizationVals % Each quantizationVals values
            temp_quan_index  = temp_quan_index + 1; % Increment temp_quan_index
            temp_min = abs(sample_val - quantization_step); % Find out the
            % absolute difference between sample_val and quantization_step
            if min_diff_val > temp_min % If min_diff_val greater than temp_min
                % Then min_diff_val is equal to temp min
                min_diff_val = temp_min;
                quantization_index = temp_quan_index; % Save the index in which
                % min_diff_val occurs
            end
        end
        quantizedOutput_index = quantizedOutput_index + 1; % Increment
        quantizedOutput(quantizedOutput_index) = quantizationVals(quantization_index);
        % Assign the corresponding value from quantizationValues
        bitstream = [bitstream,flip(de2bi(quantization_index - 1,n))];
        % Append quantized output bit stream to bitstream
    end
end
