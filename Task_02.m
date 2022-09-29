%% clear
clc;clear;
%% Load the data
load('Gaussian2D.mat');
A=s1(:,1);
B=s1(:,2);
x_axis = -5:0.1:5;
y_axis = -5:0.1:5;
figure(1)
histogram2(A, B, x_axis, y_axis, 'Normalization', 'cdf')
figure(2)
histogram2(A, B, x_axis, y_axis, 'Normalization', 'pdf')