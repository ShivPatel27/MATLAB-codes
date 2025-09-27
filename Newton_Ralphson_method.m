clc
clear
close all

x0=5;
b=4;
er=1e-16;
del=x0*1e2;
t=linspace(-20,20,2000);
f=@(x) (x-1).^3+0.512;
df=@(x) 3.*(x-1).^2;
plot(t,f(t));

while del>er
    x1=x0-f(x0)/df(x0);
    del=abs(x1-x0);
    x0=x1;
end

hold on
scatter(x0,f(x0));
 

