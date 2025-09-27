clc
clear
close all

a = 28.3e-3;
b = 21.4e-3;
t = linspace(-2*pi, 2*pi, 1000);

er = 1.39;
e0 = 8.85418e-12;
h = 1.5e-3;

%r = (a*b)./(sqrt((a^2*sin(x).^2) + (b^2*cos(x).^2)));
mu0 = 12.56e-7;

ef = ((er + 1)/2) + (((er - 1)/2 * (1 + (12*h/b))^(-1/2)));
Ca = (ef * pi * e0 * a * b) / h;

%f = @(x) mu0.*((a*b)./(sqrt((a^2*sin(x).^2)+(b^2*cos(x).^2)))).*((log(2.*((a*b)./(sqrt((a^2*sin(x).^2)+(b^2*cos(x).^2))))/b)+0.9+));

plot(t, f(t));

L = integral(f, 0, 2*pi);
fr = 1 / (2 * pi * sqrt(L * Ca));