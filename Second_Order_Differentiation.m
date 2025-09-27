clc
clear
close all
%taylor expansion of f(t+dt) = f(t) + f'(t)dt + f"(t)dt^2/2! +
%f"'(t)dt^3/3!+......

%taylor expansion of f(t-dt) = f(t) - f'(t)dt + f"(t)dt^2/2! -
%f"'(t)dt^3/3!+......

% So, to find F"={f(t+dt)-2f(t)+f(t-dt)}/dt^2 --> Formula for second order
% derivative.

dt=0.01;
t=-1:dt:1;
f=exp(((t).^2)*2);

f_dash=4*(t).*exp(2*((t).^2));

fdfdash = [(f(2:end)-f(1:end-1))/dt,NaN];
bdfdash = [NaN,-(f(1:end-1)-f(2:end))/dt];

cdfdash = [NaN,(f(3:end)-f(1:end-2))/(2*dt),NaN];

f_dd=(4*exp(2*(t).^2)).*(1+4*(t).^2);

cdfdd = [NaN,((f(3:end))-(2.*f(2:end-1))+(f(1:end-2)))/(dt^2),NaN];

error=(cdfdd(2:end-1)-f_dd(2:end-1))/(f_dd(2:end-1))*100;

figure;
plot(t,f);
hold on;
%plot(t,bdfdash);
%plot(t,fdfdash);
p1=plot(t,cdfdash);
p1.LineStyle="--";
plot(t,f_dash);

p2=plot(t,f_dd);
p2.Color="magenta";

p3=plot(t,cdfdd);
p3.LineStyle=":";




