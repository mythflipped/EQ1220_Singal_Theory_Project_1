%% clear
clc;clear;
%% Load the data
load('Gaussian2D.mat');
%% some Interesting test
Ms1 = mean(s1);
sigmas1 = var(s1);

Ms2 = mean(s2);
sigmas2 = var(s2);

M1 = mean(s1);
cov1 = [2 0.5; 0.5 2];
cov2 = [2 1.5; 1.5 2];
cov3 = [2 -1.5;-1.5 2];
%% Plot the pdf 
x1=-5:0.2:5;
x2=-5:0.2:5;
[X1, X2]=meshgrid(x1, x2);
X=[X1(:) X2(:)];

y1=mvnpdf(X,M1,cov1);
y1=reshape(y1, length(x2), length(x1));

y2=mvnpdf(X,M1,cov2);
y2=reshape(y2, length(x2), length(x1));

y3=mvnpdf(X,M1,cov3);
y3=reshape(y3, length(x2), length(x1));
subplot(3,1,1)

surf(x1, x2, y1);
title('p=0.25')
xlabel('X')
ylabel('Y')
zlabel('Probability density')
subplot(3,1,2)

surf(x1,x2,y2);
title('p=0.75')
xlabel('X')
ylabel('Y')
zlabel('Probability density')
subplot(313)
surf(x1,x2,y3)
title('p=-0.75')
xlabel('X')
ylabel('Y')
zlabel('Probability density')
axis auto

grid on


