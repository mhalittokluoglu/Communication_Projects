function [SampledTDD_Signal_1,SampledTDD_Signal_2] = SampleTDM_Signals(...
    timeAxis, TDM_Signal, SamplingFrequency, SamplingWidth)
    timeIncrement = timeAxis(2) - timeAxis(1);
    SamplingOffset1 = 0;
    SamplingOffset2 = 1/(2*SamplingFrequency*timeIncrement);
    SampledTDD_Signal_1 = sample_func(SamplingWidth,SamplingFrequency,...
        SamplingOffset1,timeAxis,TDM_Signal);
    SampledTDD_Signal_2 = sample_func(SamplingWidth,SamplingFrequency,...
        SamplingOffset2,timeAxis,TDM_Signal);
end