function HoldedQuantizedOutput = HoldQuantizedSample(quantizedOutput,time,sample_axis)
    HoldedQuantizedOutput = zeros(1,length(time)); % Creating Output Vector
    quantizedIndex = 1; % Initial index
    for time_index = 1:length(time) % time_index fot HoldedQuantizedOutput
        if quantizedIndex < length(sample_axis) % Did I reach the end of 
            % the sample_axis
      
            if (sample_axis(quantizedIndex)+sample_axis(quantizedIndex+1)) /2 > time(time_index)
                % Taking the point as middle
                HoldedQuantizedOutput(time_index) = quantizedOutput(quantizedIndex);
            else % For the next point assign HoldedQuantizedOutput and increment index
            HoldedQuantizedOutput(time_index) = quantizedOutput(quantizedIndex);
            quantizedIndex = quantizedIndex + 1;
            end
        else % For the last one
            HoldedQuantizedOutput(time_index) = quantizedOutput(quantizedIndex);
        end
    end
