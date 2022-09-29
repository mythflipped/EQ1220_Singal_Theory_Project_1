%% clear
clc;clear;
%% Load the data
load('SinusInNoise2.mat')


[pxx1,w1] = periodogram(y);
plot(w1/pi,pxx1)
title('Periodic power spectral density estimation')
xlabel('Normalized frequency')
ylabel('Power / Frequency')
