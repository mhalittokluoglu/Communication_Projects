clc;
clear all;
close all;

fm = 1; % Signal Frequency
initial_time = -20/fm; % Initial Time, it is adjusted to fm
final_time = 20/fm; % Final time, it is adjusted to fm
increment = (5*10^-4)/fm; % time increment, it is adjusted to fm

% t contains 40 periodic waves
% 40 periodic wave is created because the fourier transfor of a periodic wave 
% is bandlimited SO 40 periodic wave make the signal approximately bandlimited
% If there have been 1 period then the fourier transform would'nt have bandlimited.
t = initial_time:increment:final_time; % time according to 40 wave
w = 2*pi*fm;

% NYQUIST CRITERIA IS MET:
fs1 = 10; % Sampling Frequency

Magnitude = 1;
y = Magnitude * cos(w*t); % Signal

% SAMPLING for fs = 10
[sample1,sample1_axis] = sample_func(y,increment,fs1,initial_time,final_time);

% QUANTIZATION
% Quantization Step Number L = 256
L8 = 8;
[bitstreamL8fs10,quantizedOutputL8] = quantize_func(L8,-Magnitude,Magnitude,sample1);


% After Quantization, make quantized values as continuous time
% by holding it
HoldedQuantizedOutputL8fs10 = HoldQuantizedSample(quantizedOutputL8,t,sample1_axis);

quantizationErrorL8fs10 = y - HoldedQuantizedOutputL8fs10;

% RECEIVER PART
% decode The Bitstream
decodedSignalL8fs10 = decode_bitstream_func(L8,bitstreamL8fs10);
% Reconstruct the signal using LowPassFilter
reconstructedSignalL8fs10 = LowPassFilter(decodedSignalL8fs10,sample1_axis,fs1/2,t);

figure(1);
plotFunction(t,y,sample1_axis,sample1,quantizedOutputL8,...
    HoldedQuantizedOutputL8fs10,quantizationErrorL8fs10,reconstructedSignalL8fs10,...
    fs1,fm,L8);


% NYQUIST CRITERIA IS MET:
fs1 = 10; % Sampling Frequency

% SAMPLING for fs = 10
[sample1,sample1_axis] = sample_func(y,increment,fs1,initial_time,final_time);

% QUANTIZATION
% Quantization Step Number L = 8
L256 = 256;
[bitstreamL256fs10,quantizedOutputL256fs10] = quantize_func(L256,-Magnitude,Magnitude,sample1);


% After Quantization, make quantized values as continuous time
% by holding it
HoldedQuantizedOutputL256fs10 = HoldQuantizedSample(quantizedOutputL256fs10,t,sample1_axis);

quantizationErrorL256fs10 = y - HoldedQuantizedOutputL256fs10;

% RECEIVER PART
% decode The Bitstream
decodedSignalL256fs10 = decode_bitstream_func(L256,bitstreamL256fs10);
% Reconstruct the signal using LowPassFilter
reconstructedSignalL256fs10 = LowPassFilter(decodedSignalL256fs10,sample1_axis,fs1/2,t);

figure(2);
plotFunction(t,y,sample1_axis,sample1,quantizedOutputL256fs10,...
    HoldedQuantizedOutputL256fs10,quantizationErrorL256fs10,reconstructedSignalL256fs10,...
    fs1,fm,L256);

% NYQUIST CRITERIA IS VIOLATED:
fs2 = 1.2; % Sampling Frequency

% SAMPLING for fs = 1.2
[sample2,sample2_axis] = sample_func(y,increment,fs2,initial_time,final_time);

% QUANTIZATION
% Quantization Step Number L = 256
L256 = 256;
[bitstreamL256fs1,quantizedOutputL256fs1] = quantize_func(L256,-Magnitude,Magnitude,sample2);


% After Quantization, make quantized values as continuous time
% by holding it
HoldedQuantizedOutputL256fs1 = HoldQuantizedSample(quantizedOutputL256fs1,t,sample2_axis);

quantizationErrorL256fs1 = y - HoldedQuantizedOutputL256fs1;

% RECEIVER PART
% decode The Bitstream
decodedSignalL256fs1 = decode_bitstream_func(L256,bitstreamL256fs1);
% Reconstruct the signal using LowPassFilter
reconstructedSignalL256fs1 = LowPassFilter(decodedSignalL256fs1,sample2_axis,fs2/2,t);

figure(3);
plotFunction(t,y,sample2_axis,sample2,quantizedOutputL256fs1,...
    HoldedQuantizedOutputL256fs1,quantizationErrorL256fs1,reconstructedSignalL256fs1,...
    fs2,fm,L256);



