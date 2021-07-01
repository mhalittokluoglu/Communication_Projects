function ReconstructedSignal = LowPassFilter_func(timeAxis,Signal,cutOffFrequency)
    [FourierSignal,FrequencyAxis] = LowPassinCTFT_func(timeAxis,Signal,cutOffFrequency);
    ReconstructedSignal = inverseCTFT_func(FrequencyAxis,FourierSignal,timeAxis);
end