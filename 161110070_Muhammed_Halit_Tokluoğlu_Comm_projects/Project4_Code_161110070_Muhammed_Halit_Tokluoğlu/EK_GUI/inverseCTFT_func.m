function TimeDomainSignal = ...
    inverseCTFT_func(FrequencyAxis,FourierSignal,timeAxis)
    % This function takes inverse Continous Time Fourier Transform for a
    % given frequncy Axis, signal in Fourier Domain
    % time is required for timeDomain signal (output)
    FrequencyIncrement = FrequencyAxis(2) - FrequencyAxis(1);
    TimeDomainSignal = zeros(1,length(timeAxis)); % Creating zero vector
    j = sqrt(-1);
    for timeIndex = 1:length(timeAxis)
        TimeDomainSignal(timeIndex) = TimeDomainSignal(timeIndex) + ...
            FrequencyIncrement * trapz(FourierSignal.*exp(j*2*pi*FrequencyAxis*timeAxis(timeIndex)));
    end
    TimeDomainSignal = real(TimeDomainSignal);
end