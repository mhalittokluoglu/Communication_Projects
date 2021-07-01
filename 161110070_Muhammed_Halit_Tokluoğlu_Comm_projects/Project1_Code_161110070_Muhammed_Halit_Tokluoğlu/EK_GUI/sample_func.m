function [sample,sample_axis] = sample_func(y,increment,fs,initial_time,final_time)

Ts = 1/fs; % Sampling Period
index_inc = 1/increment; % Reciprocal of the increment
% This will used for finding the index

sample_length = (final_time-initial_time)/Ts + 1;
% Samples vector length
sample = zeros(1,sample_length);
% Assign sample values as 0 at first
sample_axis = initial_time:Ts:final_time;
% Create a sample_axis for sample
sample_index = 0;
for sample_n = 0:Ts:final_time-initial_time % Every sample time
    y_index = round(index_inc*(sample_n))+ 1;
    % Find out the index of y according to that sample time
    sample_index = sample_index + 1; % increment sample_index
    sample(sample_index) = y(y_index); 
    % Assign the sampled value to sample vector element
end
