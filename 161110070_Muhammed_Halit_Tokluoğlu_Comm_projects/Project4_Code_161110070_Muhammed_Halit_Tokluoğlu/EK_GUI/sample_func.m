function SampledSignal = sample_func(SamplingWidth,SamplingFrequency,SamplingOffset,timeAxis,Signal)
    timeIncrement = timeAxis(2) - timeAxis(1);
    SamplingPeriodIndex = 1 / (SamplingFrequency*timeIncrement);
    SamplingWidthIndex = round(SamplingWidth / timeIncrement);
    SampledSignal = zeros(1,length(timeAxis));
    SamplingWidthIndexCounter = 0;
    for timeIndex = 1:length(timeAxis)
        if timeIndex < SamplingOffset
            continue
        end
        SamplingWidthIndexCounter = SamplingWidthIndexCounter + 1;
        if SamplingWidthIndexCounter <= SamplingWidthIndex
            SampledSignal(timeIndex) = Signal(timeIndex);
        end
        if SamplingWidthIndexCounter >= round(SamplingPeriodIndex)
            SamplingWidthIndexCounter = 0;
        end
    end
    
end