function [FourierSignal,FrequencyAxis] = LowPassinCTFT_func(timeAxis,Signal,cutOffFrequency)
    j = sqrt(-1);
    timeIncrement = timeAxis(2) - timeAxis(1);
    FrequencyIncrement = 0.01;
    FrequencyAxis = -cutOffFrequency:FrequencyIncrement:cutOffFrequency;
    FourierSignal = zeros(1,length(FrequencyAxis));
    for FrequencyIndex = 1:length(FrequencyAxis)
        FourierSignal(FrequencyIndex) = FourierSignal(FrequencyIndex) + ...
            timeIncrement*trapz(Signal.*exp(-j*2*pi*FrequencyAxis(FrequencyIndex)*timeAxis));
    end

end