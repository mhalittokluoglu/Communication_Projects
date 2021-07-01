clc;
clear all;
close all;
format compact;
increment = 0.01; % Time increment
initial_time = -1; % Continous Signal initial time
final_time = 1; % Continuous Signal final time
t = initial_time:increment:final_time;
f = 1; % Frequency of the continuous signal
w = 2*pi*f;
Magnitude = 1; % Magnitude of the continuous time signal
y = Magnitude * cos(w*t); % Continuous time signal

% NYQUIST CRITERIA IS SATISFIED
display('NYQUIST CRITERIA SATISFIED');
fs = 10; % Sampling Frequecy fs > 2f
% SAMPLING
[sample,sample_axis] = sample_func(y,increment,fs,initial_time,final_time);
% QUANTIZING
L = 8; % The quantization step number
[bitstream,quantizedOutput] = quantize_func(L,-Magnitude,Magnitude,sample) ;
% The Quantized Output and bitstream 
% CODING:
display(bitstream);
threeBit = coding_func(bitstream,3) % 3-bit Coding
fourBit = coding_func(bitstream,4)% 4-bit Coding
fiveBit = coding_func(bitstream,5) % 5-bit Coding
eightBit = coding_func(bitstream,8) % 8-bit Coding
figure(1)
plotScript;

% UNDERSAMPLING - NYQUIST VIOLATION
display('NYQUIST CRITERIA VIOLATED');
fs = 1; % Sampling Frequecy fs < 2f
% SAMPLING
[sample,sample_axis] = sample_func(y,increment,fs,initial_time,final_time);
% QUANTIZING
L = 8; % The quantization step number
[bitstream,quantizedOutput] = quantize_func(L,-Magnitude,Magnitude,sample) ;
% The Quantized Output and bitstream 
% CODING:
display(bitstream);
threeBitUnderSampling = coding_func(bitstream,3) % 3-bit Coding
fourBitUnderSampling = coding_func(bitstream,4)% 4-bit Coding
fiveBitUnderSampling = coding_func(bitstream,5) % 5-bit Coding
eightBitUnderSampling = coding_func(bitstream,8) % 8-bit Coding
figure(2)
plotScript;
