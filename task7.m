clc ,clear all
k = -10:pi/100:10;
R = (abs(k)+17/15).*256.*(4.^-abs(k))/225
plot(k,R)
xlabel(' correlation index k')
ylabel('acf')
grid on