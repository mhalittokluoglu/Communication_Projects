function decodedOutput = decode_bitstream_func(L,bitstream)
    % This function decode the input bitstream according to the
    % quantization step number "L". In other words it converts bitstream to
    % quantized signal
    n = log2(L); % bit number
    % Dividing bitstream to (bit number) n part
    n_coded_bitstream = reshape(bitstream,n,length(bitstream)/n)';
    % Converting the divided parts from binary to decimal
    decodedOutput = bi2de(fliplr(n_coded_bitstream))';
    % Substracting the offset and normalizing the decodedOutput
    decodedOutput = (decodedOutput - (L-1)/2)/((L-1)/2);
    % After that the output is equal to quantized signal
end