function SampledSignal = sample_func(SamplingWidth,SamplingFrequency,SamplingOffset,timeAxis,Signal)
% This function takes Sampling Width, Sampling Frequency, SamplingOffset,
% timeAxis, Signal and creates corresponding Sampled Signal, Here:
% SamplingWidth: The pulse width of the sampled signal
% SamplingFrequency: The frequency at which the signal is sampled
% SamplingOffset: The time (which the function waits) 
% before starting the sampling
% timAxis: The Time Axis for the Input Signal and the Output Signal 
% Signal: The input Signal
    timeIncrement = timeAxis(2) - timeAxis(1); % Taking time increment
    % Index for Sampling Period:
    SamplingPeriodIndex = 1 / (SamplingFrequency*timeIncrement);
    % Index for Sampling width:   
    SamplingWidthIndex = round(SamplingWidth / timeIncrement);
    % Creating the SampledSignal with 0.0 initial values:
    SampledSignal = zeros(1,length(timeAxis));
    SamplingWidthIndexCounter = 0;
    for timeIndex = 1:length(timeAxis)
        % Wait until the Sampling Offset reached
        if timeIndex < SamplingOffset
            continue
        end
        % Increment Sampling Width Counter Index:
        SamplingWidthIndexCounter = SamplingWidthIndexCounter + 1;
        % If Sampling Width Counter Index did not reach the Sampling Width index
        % then Sample the signal values
        if SamplingWidthIndexCounter <= SamplingWidthIndex
            SampledSignal(timeIndex) = Signal(timeIndex);
        end
        % If Sampling Width Counter Index reached to the Sampling Period
        % index then reset the Sampling Width Counter Index
        if SamplingWidthIndexCounter >= round(SamplingPeriodIndex)
            SamplingWidthIndexCounter = 0;
        end
    end
end