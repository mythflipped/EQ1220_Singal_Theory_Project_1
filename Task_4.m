%% clear
clc;clear;
%% Load the data
load('SinusInNoise1.mat')

M1=mean(y1);
M2=mean(y2);
var1=var(y1);
var2=var(y2);

t = (0:1:99);
subplot(311)
plot(y1);
subplot(312)
plot(y2);
subplot(313)
plot(y2-y1);
