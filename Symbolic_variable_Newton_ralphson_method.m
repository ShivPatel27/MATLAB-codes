clc
clear
close all

x0=3;
b=4;
del=x0*1e2
er=1e-13;
x1=x0*1e2;
t=linspace(x0,b,2000);
syms x
f=exp(-x).*(3.2*sin(x)-0.5*cos(x));
%df=@(x) exp(-x).*(3.2*cos(x)-0.5*sin(x)-3.2*sin(x)-0.5*cos(x));
df=diff(f);


while del>er
    x1=x0-(double(subs(f,x,x0)/subs(df,x,x0)));
    del=abs(x1-x0);
    x0=x1;
end
plot(t,double(subs(f,x,t)));
hold on
scatter(x0,double(subs(f,x,x0)));
