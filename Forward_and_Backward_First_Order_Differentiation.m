%Find the Derivative of e^x using numerical differentiation
% f=e^x, df= e^x 
% forward df = [e^(x+dx)-(e^x)]/dx
% Backward df = [(e^x)-e^(x-dx)]/dx
% Central df = [(e^x+dx)-e^(x-dx)]/2dx

clc
clear
close all

dx=1;
x=-10:dx:10;
fx=(x).^2;

df=(x).*2;%Exact Derivative

fdf = [(fx(2:end)-fx(1:end-1))/dx,NaN];
bdf = [NaN,-(fx(1:end-1)-fx(2:end))/dx];

cdf=[NaN,(fx(3:end)-fx(1:end-2))/(2*dx),NaN] ;

figure;

plot(x,df);
title("Numertical Differentiation")
xlabel("X");
ylabel("F(X)");
hold on;
p1=plot(x,cdf);
p1.Color="red";
p2=plot(x,bdf);
p2.Color='cyan';
p3=plot(x,fdf);
p3.Color='yellow';
p4=plot(x,fx);
p4.Color="magenta";
p4.LineStyle="--";
