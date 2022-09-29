%% clear
clc;clear;
%% Load the data
load('SinusInNoise1.mat')

subplot(311)
[pxx1,w1] = periodogram(y1);
plot(w1/pi,pxx1)

title('Periodic power spectral density estimation')
xlabel('Normalized frequency')
ylabel('Power / Frequency')

subplot(312)
[pxx2,w2] = periodogram(y2);
plot(w2/pi,pxx2)
title('Periodic power spectral density estimation')
xlabel('Normalized frequency')
ylabel('Power / Frequency')
subplot(313)
[pxx3,w3] = periodogram(y2-y1);
plot(w3/pi,pxx3)
title('Periodic power spectral density estimation')
xlabel('Normalized frequency')
ylabel('Power / Frequency')