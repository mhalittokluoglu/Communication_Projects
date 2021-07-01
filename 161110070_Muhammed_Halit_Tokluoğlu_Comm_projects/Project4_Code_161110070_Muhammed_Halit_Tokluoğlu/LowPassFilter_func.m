function ReconstructedSignal = LowPassFilter_func(timeAxis,Signal,cutOffFrequency)
% This function takes a signal and pass it through an ideal lowpass filter
% with specified cutoff frequency It uses 2 functions: LowPassinCTFT_func
% and inverseCTFT_func. First It takes the signal fourier transform and
% pass it through a lowpass filter then it takes the inverse fourier
% transform and gets the reconstructed output signal.
    [FourierSignal,FrequencyAxis] = LowPassinCTFT_func(timeAxis,Signal,cutOffFrequency);
    ReconstructedSignal = inverseCTFT_func(FrequencyAxis,FourierSignal,timeAxis);
end