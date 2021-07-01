function signal_inTimeDomain = ...
    inverseCTFT_func(frequencyAxis,signal_inFourierDomain,time,increment)
    % This function takes inverse Continous Time Fourier Transform for a
    % given frequncy Axis, signal in Fourier Domain
    % time is required for timeDomain signal (output)
    signal_inTimeDomain = zeros(1,length(time)); % Creating zero vector
    j = sqrt(-1);
    time_index = 0;
    for eachTime = time
        time_index = time_index + 1;
        %Taking Inverse Fourier Transform
        signal_inTimeDomain(time_index) = ...
            trapz(signal_inFourierDomain .* exp(j*2*pi*frequencyAxis*eachTime));
    end
    % Normalizing the Time Domain Signal
    signal_inTimeDomain = increment * signal_inTimeDomain;
end