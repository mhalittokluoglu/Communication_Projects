function TimeDomainSignal = ...
    inverseCTFT_func(FrequencyAxis,FourierSignal,timeAxis)
% This function takes Inverse Continuous Time Fourier Transform. It takes
% FrequencyAxis, FourierSignal, timeAxis and it converts them to 
% TimeDomainSignal. Here:
% FrequencyAxis: Fourier Signal Frequency Axis
% FourierSignal: The Signal in Fourier Domain
% timeAxis: The Time Axis for the Output Time-Domain Signal 

    % Taking frequency increment:
    FrequencyIncrement = FrequencyAxis(2) - FrequencyAxis(1);
    % Creating Time-Domain Signal with 0.0 initial values:
    TimeDomainSignal = zeros(1,length(timeAxis)); 
    % Taking The Inverse CTFT
    j = sqrt(-1);
    for timeIndex = 1:length(timeAxis)
        TimeDomainSignal(timeIndex) = TimeDomainSignal(timeIndex) + ...
            FrequencyIncrement * trapz(FourierSignal.*exp(j*2*pi*FrequencyAxis*timeAxis(timeIndex)));
    end
    TimeDomainSignal = real(TimeDomainSignal);
end