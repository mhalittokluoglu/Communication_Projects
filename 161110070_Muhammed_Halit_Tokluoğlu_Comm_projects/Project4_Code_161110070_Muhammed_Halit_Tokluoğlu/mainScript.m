%% Clearing The Workspace
clc;
clear;
close all;

%% Setting up the Signal Frequencies and their Periods
AnalogSignal_1_Frequency = 1; % The frequency of the
% the Analog Signal 1(fm1)
AnalogSignal_2_Frequency = 1.3; % The frequency of the
% the Analog Signal 2(fm2)
AnalogSignalPeriod_1 = 1/AnalogSignal_1_Frequency;
AnalogSignalPeriod_2 = 1/AnalogSignal_2_Frequency;

%% Creating TimeAxis According to  the Lowest Frequency
if AnalogSignal_1_Frequency < AnalogSignal_2_Frequency
    timeIncrement = AnalogSignalPeriod_1/5000;
    startTime = -5*AnalogSignalPeriod_1;
    endTime = 5*AnalogSignalPeriod_1;
else
    timeIncrement = AnalogSignalPeriod_2/5000;
    startTime = -5*AnalogSignalPeriod_2;
    endTime = 5*AnalogSignalPeriod_2;
   
end
timeAxis = startTime:timeIncrement:endTime;

%% Creating The Signals:

w1 = 2*pi*AnalogSignal_1_Frequency;
w2 = 2*pi*AnalogSignal_2_Frequency;

AnalogSignal_1 = cos(w1*timeAxis);
AnalogSignal_2 = sin(w2*timeAxis);

%% Sampling The Signals
SamplingWidth = 0.040;
SamplingFrequency = 15;

SamplingOffset1 = 0;
SamplingOffset2 = 1/(2*SamplingFrequency*timeIncrement);
SampledSignal_1 = sample_func(SamplingWidth,SamplingFrequency,...
    SamplingOffset1,timeAxis,AnalogSignal_1);
SampledSignal_2 = sample_func(SamplingWidth,SamplingFrequency,...
    SamplingOffset2,timeAxis,AnalogSignal_2);

%% Creating the TDM Signal
TDM_Signal = SampledSignal_1 + SampledSignal_2;

%% Putting TDM Signal to Sampling Circuits 
[SampledTDD_Signal_1,SampledTDD_Signal_2] = SampleTDM_Signals(...
    timeAxis, TDM_Signal, SamplingFrequency, SamplingWidth);

%% Reconstructing the Signal by passing the SampledTDD_Signals to the LowPassFilters
ReconstructedSignal1 = ...
    LowPassFilter_func(timeAxis,SampledTDD_Signal_1,SamplingFrequency/2);
ReconstructedSignal2 = ...
    LowPassFilter_func(timeAxis,SampledTDD_Signal_2,SamplingFrequency/2);

%% Plotting The Results
plotFunction(timeAxis, AnalogSignal_1, AnalogSignal_2, ...
    AnalogSignal_1_Frequency, AnalogSignal_2_Frequency, SamplingFrequency,...
    SamplingWidth, SampledSignal_1, SampledSignal_2, ...
    TDM_Signal, SampledTDD_Signal_1, SampledTDD_Signal_2, ...
    ReconstructedSignal1,ReconstructedSignal2)
