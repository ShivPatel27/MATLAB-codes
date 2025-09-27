clc
clear
close all

%{

It is an expantion of the Newton-Ralphson method itself

where instead of derivative of the function
you numerically find the derivative of the function

%}
f=@(x) x.^3-x-1;
x0=54;
x1=68;
er=1e-15;

while abs(f(x0))>er
    x_new=x1 - (f(x1)/(f(x1)-f(x0)))*(x1-x0);
    x0=x1;
    x1=x_new;
end
format long;