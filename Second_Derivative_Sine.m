clc
clear
close all

n=5;
t=linspace(-n*pi,n*pi,5000);
fa=sin(t);
f_dd=-sin(t);%analytical derivative

dt=10;
f= cos(t(1:dt:end));

cdfdd = [NaN,((f(3:end))-(2.*f(2:end-1))+(f(1:end-2)))/((t(dt)-t(1))^2),NaN];


figure;
hold on;

p2=plot(t,f_dd);
p2.Color="magenta";

p3=scatter(t(1:dt:end),cdfdd,"*");




