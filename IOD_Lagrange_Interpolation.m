clc
clear
close all
%Lagrange Interpolation

t=linspace(-5,100,5000);
x=0:20:100;
y=[26.000,48.6,61.6,71.2,74.8,75.2];



p1=@(xx) y(1)*((xx-x(2)).*(xx-x(3)).*(xx-x(4)).*(xx-x(5)).*(xx-x(6)))./((x(1)-x(2)).*(x(1)-x(3)).*(x(1)-x(4)).*(x(1)-x(5)).*(x(1)-x(6)));
p2=@(xx) y(2)*((xx-x(1)).*(xx-x(3)).*(xx-x(4)).*(xx-x(5)).*(xx-x(6)))./((x(2)-x(1)).*(x(2)-x(3)).*(x(2)-x(4)).*(x(2)-x(5)).*(x(2)-x(6)));
p3=@(xx) y(3)*((xx-x(1)).*(xx-x(2)).*(xx-x(4)).*(xx-x(5)).*(xx-x(6)))./((x(3)-x(1)).*(x(3)-x(2)).*(x(3)-x(4)).*(x(3)-x(5)).*(x(3)-x(6)));
p4=@(xx) y(4)*((xx-x(1)).*(xx-x(2)).*(xx-x(3)).*(xx-x(5)).*(xx-x(6)))./((x(4)-x(1)).*(x(4)-x(2)).*(x(4)-x(3)).*(x(4)-x(5)).*(x(4)-x(6)));
p5=@(xx) y(5)*((xx-x(1)).*(xx-x(3)).*(xx-x(4)).*(xx-x(2)).*(xx-x(6)))./((x(5)-x(1)).*(x(5)-x(3)).*(x(5)-x(4)).*(x(5)-x(2)).*(x(5)-x(6)));
p6=@(xx) y(6)*((xx-x(1)).*(xx-x(2)).*(xx-x(3)).*(xx-x(4)).*(xx-x(5)))./((x(6)-x(1)).*(x(6)-x(2)).*(x(6)-x(3)).*(x(6)-x(4)).*(x(6)-x(5)));

f=@(a) p1(a)+p2(a)+p3(a)+p4(a)+p5(a)+p6(a);


figure;
scatter(x,y);
hold on;

d=plot(t,f(t));
d.Color="black";
d.LineWidth=1.5;

d1=plot(x,y);
d1.LineStyle="--";
d1.LineWidth=1;
d1.Color="cyan";


%{
d2=plot(t,p1(t));

d3=plot(t,p2(t));

d4=plot(t,p3(t));
d5=plot(t,p4(t));
d6=plot(t,p5(t));
d7=plot(t,p6(t));

d2.Color="cyan";
d3.Color="cyan";
d4.Color="cyan";
d5.Color="cyan";
d6.Color="cyan";
d7.Color="cyan";
%}
