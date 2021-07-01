function [frequencyAxis,lowPassinFourierSignal] = ...
    lowPassinDTFT_func(signalAxis,signal,startFrequency,finalFrequency,increment)
    inc = 0.01; % increment for frequency Domain
    incrementConstant = inc/increment; % The constant comes from the increment
    % differences between time and frequency domains.
    frequencyAxis = startFrequency:inc:finalFrequency; % Creating Frequency Axis
    % Creating output signal and assigning its values as zeros
    lowPassinFourierSignal = zeros(1,length(frequencyAxis));
    j = sqrt(-1);
    frequency_index = 0;
    for eachFrequency = frequencyAxis
        frequency_index = frequency_index + 1; % incrementing frequncy_index
        signal_index = 0;
        for sample = signalAxis
            signal_index = signal_index + 1; % incrementing signal_index
            % Taking the DTFT of according to specified frequencies.
            lowPassinFourierSignal(frequency_index) = ... 
                lowPassinFourierSignal(frequency_index) ...
            + signal(signal_index) * exp(-j*2*pi*eachFrequency*sample);
        end
    end
    lowPassinFourierSignal = lowPassinFourierSignal * incrementConstant;
end