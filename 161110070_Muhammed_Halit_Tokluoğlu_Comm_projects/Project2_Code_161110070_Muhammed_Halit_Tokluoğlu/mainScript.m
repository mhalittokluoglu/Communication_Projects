clc;
clear all;
close all;

fm = 1; % Signal Frequency
initial_time = -20/fm; % Initial Time, it is adjusted to fm
final_time = 20/fm; % Final time, it is adjusted to fm
increment = (10^-2)/fm; % time increment, it is adjusted to fm

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
% Quantization Step Number L = 8
L1 = 8;
[bitstream8,quantizedOutput8] = quantize_func(L1,-Magnitude,Magnitude,sample1);
% RECEIVER PART
% decode The Bitstream
decodedSignal8 = decode_bitstream_func(L1,bitstream8);
% Reconstruct the signal using LowPassFilter
reconstructedSignal8 = LowPassFilter(decodedSignal8,sample1_axis,fs1/2,t);
figure(1);
plotFunction(t,y,sample1_axis,sample1,quantizedOutput8,decodedSignal8, ...
    reconstructedSignal8,fs1,fm,L1);

% Quantization Step Number L = 8
L2 = 256;
[bitstream256,quantizedOutput256] = quantize_func(L2,-Magnitude,Magnitude,sample1);
% RECEIVER PART
% decode The Bitstream
decodedSignal256 = decode_bitstream_func(L2,bitstream256);
% Reconstruct the signal using LowPassFilter
reconstructedSignal256 = LowPassFilter(decodedSignal256,sample1_axis,fs1/2,t);
figure(2);
plotFunction(t,y,sample1_axis,sample1,quantizedOutput256,decodedSignal256, ...
    reconstructedSignal256,fs1,fm,L2);

% UNDERSAMPLING fs < 2f
fs2 = 1.5;
[sample2,sample2_axis] = sample_func(y,increment,fs2,initial_time,final_time);
L3 = 256;
[bitstream256_2,quantizedOutput256_2] = quantize_func(L3,-Magnitude,Magnitude,sample2);
% RECEIVER PART
% decode The Bitstream
decodedSignal256_2 = decode_bitstream_func(L3,bitstream256_2);
% Reconstruct the signal using LowPassFilter
reconstructedSignal256_2 = LowPassFilter(decodedSignal256_2,sample2_axis,fs2/2,t);
figure(3);
plotFunction(t,y,sample2_axis,sample2,quantizedOutput256_2,decodedSignal256_2, ...
    reconstructedSignal256_2,fs2,fm,L3);
