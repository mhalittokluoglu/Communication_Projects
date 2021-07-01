function [SampledTDD_Signal_1,SampledTDD_Signal_2] = SampleTDM_Signals(...
    timeAxis, TDM_Signal, SamplingFrequency, SamplingWidth)
% This function takes timeAxis, TDM_Signal, SamplingFrequency,
% SamplingWidth and converts them to SampledTDD_Signal_1,
% SampledTDD_Signal_2, Here:
% timeAxis:  The Time Axis for the Input TDM Signal and Output Signals
% TDM_Signal: Time Division Multiplexed Signal
% SamplingFrequency: Sampling Frequency/Rate
% SamplingWidth: The pulse width of the sampled signal
    timeIncrement = timeAxis(2) - timeAxis(1); % Taking the Time Increment
    % Creating the SamplingOffset1 for the First Signal:
    SamplingOffset1 = 0;
    % Creating the SamplingOffset2 for the Second Signal:
    SamplingOffset2 = 1/(2*SamplingFrequency*timeIncrement);
    % Putting TDM Signal to Sampling Circuit:
    SampledTDD_Signal_1 = sample_func(SamplingWidth,SamplingFrequency,...
        SamplingOffset1,timeAxis,TDM_Signal);
    SampledTDD_Signal_2 = sample_func(SamplingWidth,SamplingFrequency,...
        SamplingOffset2,timeAxis,TDM_Signal);
end