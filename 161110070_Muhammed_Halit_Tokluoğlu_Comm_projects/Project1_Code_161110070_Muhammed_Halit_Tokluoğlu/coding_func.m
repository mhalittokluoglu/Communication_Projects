function encodedOutput = coding_func(bitstream,bitSize)
    remainderBitstreamSize = mod(length(bitstream),bitSize);
    dividableBitstream = bitstream(1:length(bitstream) - remainderBitstreamSize); 
    % Extract dividable bitstream
    encodedOutput = reshape(dividableBitstream,bitSize,round(length(dividableBitstream)/bitSize))';
    if mod(length(bitstream),bitSize) > 0 % If bitsream not dividable with bit number
        appending = bitstream(length(bitstream) - remainderBitstreamSize + 1 : end);
        % appending = Remaining Bits
        null_number = bitSize - length(appending);
        for nan_element = 1:null_number % appending remaining bits + NaN values
            appending(end+1) = NaN;
        end
        encodedOutput(end+1,:) = appending; % Append Appending
    end
end