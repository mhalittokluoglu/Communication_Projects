function [FourierSignal,FrequencyAxis] = LowPassinCTFT_func(timeAxis,Signal,cutOffFrequency)
% This function takes timeAxis, Signal, and cutOffFrequency and converts
% them to ForierSignal and FrequencyAxis, Here:
% timeAxis: The Time Axis for the Input Signal
% Signal: Input Time-Domain Signal
% cutOffFrequency: Lowpass Filter Cutoff Frequency
    j = sqrt(-1);
    timeIncrement = timeAxis(2) - timeAxis(1); % Taking the Time Increment
    % Creating Frequency Increment as 0.01
    FrequencyIncrement = 0.01;
    % Creating The Frequency axis according to the cutOffFrequencies. Any
    % Forier Signal beyond cutOffFrequency will be 0.0 since they won't be
    % calculated.
    FrequencyAxis = -cutOffFrequency:FrequencyIncrement:cutOffFrequency;
    % Taking the Continous Time Fouier Transform:
    FourierSignal = zeros(1,length(FrequencyAxis));
    for FrequencyIndex = 1:length(FrequencyAxis)
        FourierSignal(FrequencyIndex) = FourierSignal(FrequencyIndex) + ...
            timeIncrement*trapz(Signal.*exp(-j*2*pi*FrequencyAxis(FrequencyIndex)*timeAxis));
    end
end