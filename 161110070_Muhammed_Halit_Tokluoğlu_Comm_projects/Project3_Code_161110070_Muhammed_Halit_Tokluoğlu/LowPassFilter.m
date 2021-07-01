function outputSignal = ...
    LowPassFilter(discreteSignal,discreteSignalAxis, cutoff_freq, time)
    % LowPassFilter takes the fourier of the given discrete time signal
    % Then in Frequency domain it cuts the signal from its cutoff
    % frequencies. Now the signal is not DTFT signal but it is a CTFT since
    % it is not periodic in time domain. After that it takes its Inverse CTFT.
    % Input Parameters:
    % discreteSignal = discrete time Signal
    % discteteSiganlAxis = discrete time signal axis
    % cutoff_freq = cutoff frequency of the filter
    % time = time of the output continuos-time signal(outputSignal)
    increment = time(2)-time(1); % Time increment
    % Taking the Discrete time Fourier Transform and cutting the frequencies
    [frequencyAxis,lowPassinFourierSignal] = ...
        lowPassinDTFT_func(discreteSignalAxis,discreteSignal,-cutoff_freq,cutoff_freq,increment);
    % Taking the Inverse Continous-Time Fourier Transform of the lowPassinFourierSignal
    outputSignal = ...
        real(inverseCTFT_func(frequencyAxis,lowPassinFourierSignal,time,increment)...
        /(2*cutoff_freq));
end