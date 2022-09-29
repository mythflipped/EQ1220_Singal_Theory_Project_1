clc ,clear all
v = -1/2:pi/100:1/2;
R = 16./[17-8*cos(2*pi*v)]
P = R.*R
plot(v,P)
xlabel(' normalized frequency')
ylabel('dB')
title('power spectrum')
grid on