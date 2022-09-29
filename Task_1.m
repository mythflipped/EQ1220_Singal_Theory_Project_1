%% clear
clc;clear;
%% Load the data
load('Gaussian1D.mat');
%% Mean and Variance 
M1 = mean(s1);
M2 = mean(s2);
M3 = mean(s3);

sigma1 = var(s1);
sigma2 = var(s2);
sigma3 = var(s3);
%% Plot empirical Distributions

 [f1,x1] = ecdf(s1);
 [f2,x2] = ecdf(s2);
 [f3,x3] = ecdf(s3);
 
 
 stairs(x1,f1);
 xlabel('X')
 ylabel('F(X)')
 hold on;
 
 stairs(x2,f2);
 hold on;
 
 stairs(x3,f3);
 legend('s1','s2','s3');
 title('empirical distributions functions')